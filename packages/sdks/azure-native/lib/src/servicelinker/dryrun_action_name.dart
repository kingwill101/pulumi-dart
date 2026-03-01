/// The name of action for you dryrun job.
enum DryrunActionName {
  valueCreateOrUpdate("createOrUpdate");

  const DryrunActionName(this.value);
  final String value;

  static DryrunActionName fromValue(String value) {
    for (final item in DryrunActionName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DryrunActionName value: $value');
  }
}

