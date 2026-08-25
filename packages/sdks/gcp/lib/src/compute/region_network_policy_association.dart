// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkPolicyAssociation {
  /// The target that the network policy is attached to.
  final pulumi.Input<String?>? attachmentTarget;
  /// User-provided name of the Network policy. The name should be unique in the project in which the policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;

  /// Creates a new [RegionNetworkPolicyAssociation].
  /// [attachmentTarget] The target that the network policy is attached to.
  /// [name] User-provided name of the Network policy. The name should be unique in the project in which the policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  const RegionNetworkPolicyAssociation({
    this.attachmentTarget,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': ?attachmentTarget,
      'name': ?name,
    };
  }

  factory RegionNetworkPolicyAssociation.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyAssociation(
      attachmentTarget: (() { final guardedValue = map['attachmentTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
