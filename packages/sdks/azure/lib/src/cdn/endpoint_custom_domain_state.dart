// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_custom_domain_cdn_managed_https.dart';
import 'endpoint_custom_domain_user_managed_https.dart';

/// Input properties used for looking up and filtering EndpointCustomDomain resources.
class EndpointCustomDomainState {
  /// The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String>? cdnEndpointId;
  /// A `cdn_managed_https` block as defined below.
  final pulumi.Input<EndpointCustomDomainCdnManagedHttps>? cdnManagedHttps;
  /// The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String>? hostName;
  /// The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  final pulumi.Input<String>? name;
  /// A `user_managed_https` block as defined below.
  ///
  /// > **Note:** Only one of `cdn_managed_https` and `user_managed_https` can be specified.
  final pulumi.Input<EndpointCustomDomainUserManagedHttps>? userManagedHttps;

  /// Creates a new [EndpointCustomDomainState].
  /// [cdnEndpointId] The ID of the CDN Endpoint. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [cdnManagedHttps] A `cdn_managed_https` block as defined below.
  /// [hostName] The host name of the custom domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [name] The name which should be used for this CDN Endpoint Custom Domain. Changing this forces a new CDN Endpoint Custom Domain to be created.
  /// [userManagedHttps] A `user_managed_https` block as defined below.
  EndpointCustomDomainState({
    pulumi.Output<String>? cdnEndpointId,
    pulumi.Output<EndpointCustomDomainCdnManagedHttps>? cdnManagedHttps,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? name,
    pulumi.Output<EndpointCustomDomainUserManagedHttps>? userManagedHttps,
  }) :
      cdnEndpointId = pulumi.Input.asOptionalInput<String>(cdnEndpointId),
      cdnManagedHttps = pulumi.Input.asOptionalInput<EndpointCustomDomainCdnManagedHttps>(cdnManagedHttps),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      name = pulumi.Input.asOptionalInput<String>(name),
      userManagedHttps = pulumi.Input.asOptionalInput<EndpointCustomDomainUserManagedHttps>(userManagedHttps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnEndpointId': ?cdnEndpointId,
      'cdnManagedHttps': ?pulumi.Input.mapOptionalInputValue<EndpointCustomDomainCdnManagedHttps, Map<String, dynamic>>(cdnManagedHttps, (value) => value.toMap()),
      'hostName': ?hostName,
      'name': ?name,
      'userManagedHttps': ?pulumi.Input.mapOptionalInputValue<EndpointCustomDomainUserManagedHttps, Map<String, dynamic>>(userManagedHttps, (value) => value.toMap()),
    };
  }

  factory EndpointCustomDomainState.fromMap(Map<String, dynamic> map) {
    return EndpointCustomDomainState(
      cdnEndpointId: map['cdnEndpointId'] == null ? null : pulumi.Output.create<String>(map['cdnEndpointId'] as String),
      cdnManagedHttps: map['cdnManagedHttps'] == null ? null : pulumi.Output.create<EndpointCustomDomainCdnManagedHttps>(EndpointCustomDomainCdnManagedHttps.fromMap((map['cdnManagedHttps'] as Map).cast<String, dynamic>())),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      userManagedHttps: map['userManagedHttps'] == null ? null : pulumi.Output.create<EndpointCustomDomainUserManagedHttps>(EndpointCustomDomainUserManagedHttps.fromMap((map['userManagedHttps'] as Map).cast<String, dynamic>())),
    );
  }
}

