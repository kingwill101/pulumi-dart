/// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
enum ResolveConflictsOnUpdate {
  none("NONE"),
  overwrite("OVERWRITE"),
  preserve("PRESERVE");

  const ResolveConflictsOnUpdate(this.wireValue);
  final String wireValue;

  static ResolveConflictsOnUpdate fromValue(String value) {
    for (final item in ResolveConflictsOnUpdate.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolveConflictsOnUpdate value: $value');
  }
}
