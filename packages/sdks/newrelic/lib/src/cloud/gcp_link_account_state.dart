// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GcpLinkAccount resources.
class GcpLinkAccountState {
  /// Account ID of the New Relic account.
  final pulumi.Input<String>? accountId;

  /// The name of the GCP account in New Relic.
  ///
  /// &gt; **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.GcpLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  final pulumi.Input<String>? name;

  /// Project ID of the GCP account.
  final pulumi.Input<String>? projectId;

  /// Creates a new [GcpLinkAccountState].
  /// [accountId] Account ID of the New Relic account.
  /// [name] The name of the GCP account in New Relic.
  /// [projectId] Project ID of the GCP account.
  GcpLinkAccountState({this.accountId, this.name, this.projectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'projectId': ?projectId,
    };
  }

  factory GcpLinkAccountState.fromMap(Map<String, dynamic> map) {
    return GcpLinkAccountState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
