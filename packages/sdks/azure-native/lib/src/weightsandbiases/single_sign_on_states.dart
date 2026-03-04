/// State of the Single Sign On for the resource
enum SingleSignOnStates {
  initial("Initial"),
  enable("Enable"),
  disable("Disable");

  const SingleSignOnStates(this.wireValue);
  final String wireValue;

  static SingleSignOnStates fromValue(String value) {
    for (final item in SingleSignOnStates.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleSignOnStates value: $value');
  }
}
