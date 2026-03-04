// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_s_get_sargs_doc}
/// Arguments for getS.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_s_get_sargs_doc}
class GetSArgs {
  /// An optional query string used to filter the Organizations to return in the response. Filter rules are case-insensitive. Further information can be found in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search#request-body).
  final pulumi.Input<String>? filter;

  /// Creates a new [GetSArgs].
  /// [filter] An optional query string used to filter the Organizations to return in the response. Filter rules are case-insensitive. Further information can be found in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search#request-body).
  GetSArgs({this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': ?filter};
  }

  factory GetSArgs.fromMap(Map<String, dynamic> map) {
    return GetSArgs(
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
