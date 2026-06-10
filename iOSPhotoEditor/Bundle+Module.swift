import Foundation

public extension Bundle {
    /// SPM resource bundle for iOSPhotoEditor.
    ///
    /// Use when presenting ``PhotoEditorViewController`` from a consuming app:
    /// ```swift
    /// PhotoEditorViewController(nibName: "PhotoEditorViewController", bundle: .iOSPhotoEditor.module)
    /// ```
    enum iOSPhotoEditor {
        public static let module = Bundle.module
    }
}
