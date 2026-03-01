// ignore_for_file: unused_element, unnecessary_cast


class ResourceProviderRegistrationFeature {
  /// Specifies the name of the feature to register.
  ///
  /// > **Note:** Only Preview Features which have an `ApprovalType` of `AutoApproval` can be managed in Terraform, features which require manual approval by Service Teams are unsupported. [More information on Resource Provider Preview Features can be found in this document](https://docs.microsoft.com/rest/api/resources/features)
  final String name;
  /// Should this feature be Registered or Unregistered?
  final bool registered;

  /// Creates a new [ResourceProviderRegistrationFeature].
  /// [name] Specifies the name of the feature to register.
  /// [registered] Should this feature be Registered or Unregistered?
  ResourceProviderRegistrationFeature({
    required this.name,
    required this.registered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'registered': registered,
    };
  }

  factory ResourceProviderRegistrationFeature.fromMap(Map<String, dynamic> map) {
    return ResourceProviderRegistrationFeature(
      name: map['name'] as String,
      registered: map['registered'] as bool,
    );
  }
}

