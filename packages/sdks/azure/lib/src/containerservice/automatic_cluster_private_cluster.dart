// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomaticClusterPrivateCluster {
  /// The ID of the Private DNS Zone which should be used for this Kubernetes Cluster. Possible values are `System`, `None` or the ID of a Private DNS Zone. Defaults to `System`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? privateDnsZoneId;
  /// Provisions a Public FQDN for the private cluster. Defaults to `false`.
  final pulumi.Input<bool?>? publicFullyQualifiedDomainNameEnabled;

  /// Creates a new [AutomaticClusterPrivateCluster].
  /// [privateDnsZoneId] The ID of the Private DNS Zone which should be used for this Kubernetes Cluster. Possible values are `System`, `None` or the ID of a Private DNS Zone. Defaults to `System`. Changing this forces a new resource to be created.
  /// [publicFullyQualifiedDomainNameEnabled] Provisions a Public FQDN for the private cluster. Defaults to `false`.
  const AutomaticClusterPrivateCluster({
    this.privateDnsZoneId,
    this.publicFullyQualifiedDomainNameEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsZoneId': ?privateDnsZoneId,
      'publicFullyQualifiedDomainNameEnabled': ?publicFullyQualifiedDomainNameEnabled,
    };
  }

  factory AutomaticClusterPrivateCluster.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterPrivateCluster(
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicFullyQualifiedDomainNameEnabled: (() { final guardedValue = map['publicFullyQualifiedDomainNameEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
