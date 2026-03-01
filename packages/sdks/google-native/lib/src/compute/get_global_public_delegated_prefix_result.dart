// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix_response.dart';

/// Result data returned by getGlobalPublicDelegatedPrefix.
class GetGlobalPublicDelegatedPrefixResult {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final int allocatablePrefixLength;
  /// The version of BYOIP API.
  final String byoipApiVersion;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  final String fingerprint;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final String ipCidrRange;
  /// If true, the prefix will be live migrated.
  final bool isLiveMigration;
  /// Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  final String kind;
  /// The public delegated prefix mode for IPv6 only.
  final String mode;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final String parentPrefix;
  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse> publicDelegatedSubPrefixs;
  /// URL of the region where the public delegated prefix resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL with id for the resource.
  final String selfLinkWithId;
  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  final String status;

  /// Creates a new [GetGlobalPublicDelegatedPrefixResult].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [byoipApiVersion] The version of BYOIP API.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [kind] Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  /// [mode] The public delegated prefix mode for IPv6 only.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [publicDelegatedSubPrefixs] The list of sub public delegated prefixes that exist for this public delegated prefix.
  /// [region] URL of the region where the public delegated prefix resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL with id for the resource.
  /// [status] The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  GetGlobalPublicDelegatedPrefixResult({
    required this.allocatablePrefixLength,
    required this.byoipApiVersion,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.ipCidrRange,
    required this.isLiveMigration,
    required this.kind,
    required this.mode,
    required this.name,
    required this.parentPrefix,
    required this.publicDelegatedSubPrefixs,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': allocatablePrefixLength,
      'byoipApiVersion': byoipApiVersion,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'ipCidrRange': ipCidrRange,
      'isLiveMigration': isLiveMigration,
      'kind': kind,
      'mode': mode,
      'name': name,
      'parentPrefix': parentPrefix,
      'publicDelegatedSubPrefixs': pulumi.Input.encodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse, Map<String, dynamic>>(publicDelegatedSubPrefixs, (value) => value.toMap()),
      'region': region,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'status': status,
    };
  }

  factory GetGlobalPublicDelegatedPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixResult(
      allocatablePrefixLength: map['allocatablePrefixLength'] as int,
      byoipApiVersion: map['byoipApiVersion'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      isLiveMigration: map['isLiveMigration'] as bool,
      kind: map['kind'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      parentPrefix: map['parentPrefix'] as String,
      publicDelegatedSubPrefixs: pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse>(map['publicDelegatedSubPrefixs'], (value) => PublicDelegatedPrefixPublicDelegatedSubPrefixResponse.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      status: map['status'] as String,
    );
  }
}

