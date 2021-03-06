package ${packageName}.base


/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
interface MvpPresenter<V: MvpView, I: MvpInteractor> {
    fun onAttach(view: V?)
    fun onDetach()
    fun getView(): V?
}