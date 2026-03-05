/// Optional. Immutable. The type of the notebook runtime template.
enum NotebookRuntimeTemplateNotebookRuntimeType {
  notebookRuntimeTypeUnspecified("NOTEBOOK_RUNTIME_TYPE_UNSPECIFIED"),
  userDefined("USER_DEFINED"),
  oneClick("ONE_CLICK");

  const NotebookRuntimeTemplateNotebookRuntimeType(this.wireValue);
  final String wireValue;

  static NotebookRuntimeTemplateNotebookRuntimeType fromValue(String value) {
    for (final item in NotebookRuntimeTemplateNotebookRuntimeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotebookRuntimeTemplateNotebookRuntimeType value: $value');
  }
}

