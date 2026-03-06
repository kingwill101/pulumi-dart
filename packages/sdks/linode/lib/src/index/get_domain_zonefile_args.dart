// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domain_zonefile_get_domain_zonefile_args_doc}
/// Arguments for getDomainZonefile.
/// {@endtemplate}
/// {@macro pulumi_index_get_domain_zonefile_get_domain_zonefile_args_doc}
class GetDomainZonefileArgs {
  /// The associated domain's unique ID.
  final pulumi.Input<int> domainId;

  /// Creates a new [GetDomainZonefileArgs].
  /// [domainId] The associated domain's unique ID.
  const GetDomainZonefileArgs({
    required this.domainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
    };
  }

  factory GetDomainZonefileArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainZonefileArgs(
      domainId: pulumi.Input.fromValue(map['domainId'] as int),
    );
  }
}

