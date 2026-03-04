// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_custom_domain_cdn_managed_https.dart';
import 'endpoint_custom_domain_user_managed_https.dart';

/// {@template pulumi_cdn_endpoint_custom_domain_endpoint_custom_domain_args_doc}
/// The set of arguments for EndpointCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_endpoint_custom_domain_endpoint_custom_domain_args_doc}
class EndpointCustomDomainArgs {
  /// The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String> cdnEndpointId;

  /// A `cdn_managed_https` block as defined below.
  final pulumi.Input<EndpointCustomDomainCdnManagedHttps>? cdnManagedHttps;

  /// The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String> hostName;

  /// The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String>? name;

  /// A `user_managed_https` block as defined below.
  ///
  /// &gt; **Note:** Only one of `cdn_managed_https` and `user_managed_https` can be specified.
  final pulumi.Input<EndpointCustomDomainUserManagedHttps>? userManagedHttps;

  /// Creates a new [EndpointCustomDomainArgs].
  /// [cdnEndpointId] The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [cdnManagedHttps] A `cdn_managed_https` block as defined below.
  /// [hostName] The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [name] The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [userManagedHttps] A `user_managed_https` block as defined below.
  EndpointCustomDomainArgs({
    required this.cdnEndpointId,
    this.cdnManagedHttps,
    required this.hostName,
    this.name,
    this.userManagedHttps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnEndpointId': cdnEndpointId,
      'cdnManagedHttps':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointCustomDomainCdnManagedHttps,
            Map<String, dynamic>
          >(cdnManagedHttps, (value) => value.toMap()),
      'hostName': hostName,
      'name': ?name,
      'userManagedHttps':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointCustomDomainUserManagedHttps,
            Map<String, dynamic>
          >(userManagedHttps, (value) => value.toMap()),
    };
  }

  factory EndpointCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return EndpointCustomDomainArgs(
      cdnEndpointId: pulumi.Input.fromValue(map['cdnEndpointId'] as String),
      cdnManagedHttps: (() {
        final guardedValue = map['cdnManagedHttps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointCustomDomainCdnManagedHttps.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userManagedHttps: (() {
        final guardedValue = map['userManagedHttps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointCustomDomainUserManagedHttps.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
