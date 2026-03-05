/// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
enum ResolveConflictsOnCreate {
  none("NONE"),
  overwrite("OVERWRITE");

  const ResolveConflictsOnCreate(this.wireValue);
  final String wireValue;

  static ResolveConflictsOnCreate fromValue(String value) {
    for (final item in ResolveConflictsOnCreate.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolveConflictsOnCreate value: $value');
  }
}

