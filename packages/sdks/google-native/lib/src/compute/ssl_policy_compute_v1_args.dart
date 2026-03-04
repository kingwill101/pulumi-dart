// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_policy_min_tls_version_compute_v1.dart';
import 'ssl_policy_profile_compute_v1.dart';

/// {@template pulumi_compute_v1_ssl_policy_compute_v1_args_doc}
/// The set of arguments for SslPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_ssl_policy_compute_v1_args_doc}
class SslPolicyComputeV1Args {
  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  final pulumi.Input<List<String>>? customFeatures;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  final pulumi.Input<SslPolicyMinTlsVersionComputeV1>? minTlsVersion;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  final pulumi.Input<SslPolicyProfileComputeV1>? profile;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [SslPolicyComputeV1Args].
  /// [customFeatures] A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [minTlsVersion] The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  /// [name] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [profile] Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  SslPolicyComputeV1Args({
    this.customFeatures,
    this.description,
    this.minTlsVersion,
    this.name,
    this.profile,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFeatures': ?customFeatures,
      'description': ?description,
      'minTlsVersion':
          ?pulumi.Input.mapOptionalInputValue<
            SslPolicyMinTlsVersionComputeV1,
            String
          >(minTlsVersion, (value) => value.wireValue),
      'name': ?name,
      'profile':
          ?pulumi.Input.mapOptionalInputValue<
            SslPolicyProfileComputeV1,
            String
          >(profile, (value) => value.wireValue),
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory SslPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return SslPolicyComputeV1Args(
      customFeatures: (() {
        final guardedValue = map['customFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minTlsVersion: (() {
        final guardedValue = map['minTlsVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SslPolicyMinTlsVersionComputeV1.fromValue(guardedValue as String),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SslPolicyProfileComputeV1.fromValue(guardedValue as String),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
