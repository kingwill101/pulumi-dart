// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureSpecMulticlusteringress {
  /// Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar'
  final pulumi.Input<String> configMembership;

  /// Creates a new [GetFeatureSpecMulticlusteringress].
  /// [configMembership] Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: 'projects/foo-proj/locations/global/memberships/bar'
  GetFeatureSpecMulticlusteringress({required this.configMembership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configMembership': configMembership};
  }

  factory GetFeatureSpecMulticlusteringress.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecMulticlusteringress(
      configMembership: pulumi.Input.fromValue(
        map['configMembership'] as String,
      ),
    );
  }
}
