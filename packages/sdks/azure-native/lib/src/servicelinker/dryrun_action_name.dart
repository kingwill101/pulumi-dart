import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of action for you dryrun job.
enum DryrunActionName implements pulumi.PulumiEnum<String> {
  valueCreateOrUpdate("createOrUpdate");

  const DryrunActionName(this.wireValue);
  @override
  final String wireValue;

  static DryrunActionName fromValue(String value) {
    for (final item in DryrunActionName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DryrunActionName value: $value');
  }
}
