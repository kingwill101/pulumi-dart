// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountCustomDomain {
  /// The Custom Domain Name to use for the Storage Account, which will be validated by Azure.
  final pulumi.Input<String> name;
  /// Should the Custom Domain Name be validated by using indirect CNAME validation?
  ///
  /// > **Note:** [More information on Validation is available here](https://docs.microsoft.com/en-gb/azure/storage/blobs/storage-custom-domain-name)
  final pulumi.Input<bool>? useSubdomain;

  /// Creates a new [AccountCustomDomain].
  /// [name] The Custom Domain Name to use for the Storage Account, which will be validated by Azure.
  /// [useSubdomain] Should the Custom Domain Name be validated by using indirect CNAME validation?
  AccountCustomDomain({
    required this.name,
    this.useSubdomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'useSubdomain': ?useSubdomain,
    };
  }

  factory AccountCustomDomain.fromMap(Map<String, dynamic> map) {
    return AccountCustomDomain(
      name: (map['name'] as String).input(),
      useSubdomain: map['useSubdomain'] == null ? null : (map['useSubdomain']! as bool).input(),
    );
  }
}

