package ${packageName}.base


import io.reactivex.disposables.CompositeDisposable

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
abstract class BasePresenter<V: MvpView, I: MvpInteractor> internal constructor(
    protected var interactor: I?,
    protected val schedulerProvider: SchedulerProvider,
    protected val compositeDisposable: CompositeDisposable) : MvpPresenter<V,I> {

    private var view: V? = null
    private val isViewAttached: Boolean get() = view != null

    override fun onAttach(view: V?) {
        this.view = view
    }

    override fun onDetach() {
        compositeDisposable.dispose()
        view = null
        interactor = null
    }

    override fun getView(): V? = view
}