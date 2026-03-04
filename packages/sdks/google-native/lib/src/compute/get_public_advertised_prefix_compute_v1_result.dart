// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_advertised_prefix_public_delegated_prefix_response_compute_v1.dart';

/// Result data returned by getPublicAdvertisedPrefix.
class GetPublicAdvertisedPrefixComputeV1Result {
  /// The version of BYOIP API.
  final String byoipApiVersion;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The address to be used for reverse DNS verification.
  final String dnsVerificationIp;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicAdvertisedPrefix. An up-to-date fingerprint must be provided in order to update the PublicAdvertisedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicAdvertisedPrefix.
  final String fingerprint;

  /// The address range, in CIDR format, represented by this public advertised prefix.
  final String ipCidrRange;

  /// Type of the resource. Always compute#publicAdvertisedPrefix for public advertised prefixes.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
  final String pdpScope;

  /// The list of public delegated prefixes that exist for this public advertised prefix.
  final List<PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1>
  publicDelegatedPrefixs;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// The shared secret to be used for reverse DNS verification.
  final String sharedSecret;

  /// The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
  final String status;

  /// Creates a new [GetPublicAdvertisedPrefixComputeV1Result].
  /// [byoipApiVersion] The version of BYOIP API.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [dnsVerificationIp] The address to be used for reverse DNS verification.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicAdvertisedPrefix. An up-to-date fingerprint must be provided in order to update the PublicAdvertisedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicAdvertisedPrefix.
  /// [ipCidrRange] The address range, in CIDR format, represented by this public advertised prefix.
  /// [kind] Type of the resource. Always compute#publicAdvertisedPrefix for public advertised prefixes.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pdpScope] Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
  /// [publicDelegatedPrefixs] The list of public delegated prefixes that exist for this public advertised prefix.
  /// [selfLink] Server-defined URL for the resource.
  /// [sharedSecret] The shared secret to be used for reverse DNS verification.
  /// [status] The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
  GetPublicAdvertisedPrefixComputeV1Result({
    required this.byoipApiVersion,
    required this.creationTimestamp,
    required this.description,
    required this.dnsVerificationIp,
    required this.fingerprint,
    required this.ipCidrRange,
    required this.kind,
    required this.name,
    required this.pdpScope,
    required this.publicDelegatedPrefixs,
    required this.selfLink,
    required this.sharedSecret,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byoipApiVersion': byoipApiVersion,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'dnsVerificationIp': dnsVerificationIp,
      'fingerprint': fingerprint,
      'ipCidrRange': ipCidrRange,
      'kind': kind,
      'name': name,
      'pdpScope': pdpScope,
      'publicDelegatedPrefixs':
          pulumi.Input.encodeList<
            PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1,
            Map<String, dynamic>
          >(publicDelegatedPrefixs, (value) => value.toMap()),
      'selfLink': selfLink,
      'sharedSecret': sharedSecret,
      'status': status,
    };
  }

  factory GetPublicAdvertisedPrefixComputeV1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPublicAdvertisedPrefixComputeV1Result(
      byoipApiVersion: map['byoipApiVersion'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      dnsVerificationIp: map['dnsVerificationIp'] as String,
      fingerprint: map['fingerprint'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      pdpScope: map['pdpScope'] as String,
      publicDelegatedPrefixs:
          pulumi.Input.decodeList<
            PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1
          >(
            map['publicDelegatedPrefixs']!,
            (value) =>
                PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      selfLink: map['selfLink'] as String,
      sharedSecret: map['sharedSecret'] as String,
      status: map['status'] as String,
    );
  }
}
