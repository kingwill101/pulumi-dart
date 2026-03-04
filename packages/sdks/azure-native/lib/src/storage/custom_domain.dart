// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The custom domain assigned to this storage account. This can be set via Update.
class CustomDomain {
  /// Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source.
  final pulumi.Input<String> name;

  /// Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates.
  final pulumi.Input<bool>? useSubDomainName;

  /// Creates a new [CustomDomain].
  /// [name] Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source.
  /// [useSubDomainName] Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates.
  CustomDomain({required this.name, this.useSubDomainName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'useSubDomainName': ?useSubDomainName,
    };
  }

  factory CustomDomain.fromMap(Map<String, dynamic> map) {
    return CustomDomain(
      name: pulumi.Input.fromValue(map['name'] as String),
      useSubDomainName: (() {
        final guardedValue = map['useSubDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
