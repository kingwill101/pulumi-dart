/// If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
enum OnBuildError {
  valueCleanup("cleanup"),
  valueAbort("abort");

  const OnBuildError(this.value);
  final String value;

  static OnBuildError fromValue(String value) {
    for (final item in OnBuildError.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnBuildError value: $value');
  }
}

