import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource deletion policy.
enum ResourceDeletionPolicy implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  cascadeDeleteAll("CascadeDeleteAll"),
  cascadeDeleteProxyOnlyChildren("CascadeDeleteProxyOnlyChildren");

  const ResourceDeletionPolicy(this.wireValue);
  @override
  final String wireValue;

  static ResourceDeletionPolicy fromValue(String value) {
    for (final item in ResourceDeletionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceDeletionPolicy value: $value');
  }
}
