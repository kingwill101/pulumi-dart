import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the Single Sign On for the resource
enum SingleSignOnStates implements pulumi.PulumiEnum<String> {
  initial("Initial"),
  enable("Enable"),
  disable("Disable");

  const SingleSignOnStates(this.wireValue);
  @override
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
