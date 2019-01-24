package ${packageName}.base


import android.content.Context
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.View
import android.widget.Toast
import dagger.android.support.AndroidSupportInjection

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
abstract class BaseFragment : Fragment(), MvpView {

    private var parentActivity: BaseActivity? = null

    override fun onAttach(context: Context?) {
        super.onAttach(context)
        if (context is BaseActivity) {
            val activity = context as BaseActivity?
            this.parentActivity = activity
            activity?.onFragmentAttached()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        performDI()
        setHasOptionsMenu(false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setUp()
    }

    fun getBaseActivity() = parentActivity

    override fun showProgress() {
    }

    override fun hideProgress() {
    }

    private fun performDI() = AndroidSupportInjection.inject(this)

    interface Callback {
        fun onFragmentAttached()
        fun onFragmentDetached(tag: String)
    }

    override fun showMessage(message: String) {
        Toast.makeText(context, message, Toast.LENGTH_SHORT).show()
    }

    abstract fun setUp()

}