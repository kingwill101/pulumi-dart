/// Provider registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ProviderRegistrationKind {
  managed("Managed"),
  hybrid("Hybrid"),
  direct("Direct");

  const ProviderRegistrationKind(this.wireValue);
  final String wireValue;

  static ProviderRegistrationKind fromValue(String value) {
    for (final item in ProviderRegistrationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProviderRegistrationKind value: $value');
  }
}
