import Foundation

public extension Bundle {
    /// SPM resource bundle for iOSPhotoEditor.
    ///
    /// Use when presenting ``PhotoEditorViewController`` from a consuming app:
    /// ```swift
    /// PhotoEditorViewController(nibName: "PhotoEditorViewController", bundle: .PhotoEditor.module)
    /// ```
    enum PhotoEditor {
        public static let module = Bundle.module
    }
}
