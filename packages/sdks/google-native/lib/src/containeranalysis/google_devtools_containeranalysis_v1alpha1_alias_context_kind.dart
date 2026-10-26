import 'package:pulumi/pulumi.dart' as pulumi;

/// The alias kind.
enum GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind implements pulumi.PulumiEnum<String> {
  kindUnspecified("KIND_UNSPECIFIED"),
  fixed("FIXED"),
  movable("MOVABLE"),
  other("OTHER");

  const GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind(this.wireValue);
  @override
  final String wireValue;

  static GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind fromValue(String value) {
    for (final item in GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind value: $value');
  }
}
