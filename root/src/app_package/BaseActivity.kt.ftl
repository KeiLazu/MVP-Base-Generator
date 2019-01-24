package ${packageName}.base

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.widget.Toast
import dagger.android.AndroidInjection

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
abstract class BaseActivity : AppCompatActivity(), MvpView, BaseFragment.Callback {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        performDI()
    }

    override fun showProgress() {}

    override fun hideProgress() {}

    private fun performDI() = AndroidInjection.inject(this)

    override fun showMessage(message: String) {
        Toast.makeText(applicationContext, message, Toast.LENGTH_SHORT).show()
    }
}