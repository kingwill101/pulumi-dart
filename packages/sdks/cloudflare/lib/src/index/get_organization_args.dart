// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_filter.dart';

/// {@template pulumi_index_get_organization_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_get_organization_args_doc}
class GetOrganizationArgs {
  final pulumi.Input<GetOrganizationFilter?>? filter;
  final pulumi.Input<String?>? organizationId;

  /// Creates a new [GetOrganizationArgs].
  /// [filter] Optional.
  /// [organizationId] Optional.
  const GetOrganizationArgs({
    this.filter,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetOrganizationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'organizationId': ?organizationId,
    };
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetOrganizationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
