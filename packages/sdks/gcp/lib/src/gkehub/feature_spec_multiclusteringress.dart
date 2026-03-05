// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSpecMulticlusteringress {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  final pulumi.Input<String> configMembership;

  /// Creates a new [FeatureSpecMulticlusteringress].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: `projects/foo-proj/locations/global/memberships/bar`
  FeatureSpecMulticlusteringress({
    required this.configMembership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMembership': configMembership,
    };
  }

  factory FeatureSpecMulticlusteringress.fromMap(Map<String, dynamic> map) {
    return FeatureSpecMulticlusteringress(
      configMembership: pulumi.Input.fromValue(map['configMembership'] as String),
    );
  }
}

