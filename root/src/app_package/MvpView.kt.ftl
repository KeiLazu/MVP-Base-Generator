package ${packageName}.base

/**
 * Template created by 
 * Kennix Lazuardi
 * You can contact me @ https://github.com/KeiLazu
 * or here: https://bitbucket.org/KeiLazu/
 * -------------------------------------------------
 * ${packageName}
 */
interface MvpView {
    fun showProgress()
    fun hideProgress()
    fun showMessage(message: String)
}