// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix_response.dart';

/// Result data returned by getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixResult {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final int? allocatablePrefixLength;
  /// The version of BYOIP API.
  final String? byoipApiVersion;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  final String? fingerprint;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final String? ipCidrRange;
  /// If true, the prefix will be live migrated.
  final bool? isLiveMigration;
  /// Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  final String? kind;
  /// The public delegated prefix mode for IPv6 only.
  final String? mode;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final String? parentPrefix;
  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse>? publicDelegatedSubPrefixs;
  /// URL of the region where the public delegated prefix resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Server-defined URL with id for the resource.
  final String? selfLinkWithId;
  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  final String? status;

  /// Creates a new [GetPublicDelegatedPrefixResult].
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
  const GetPublicDelegatedPrefixResult({
    this.allocatablePrefixLength,
    this.byoipApiVersion,
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.ipCidrRange,
    this.isLiveMigration,
    this.kind,
    this.mode,
    this.name,
    this.parentPrefix,
    this.publicDelegatedSubPrefixs,
    this.region,
    this.selfLink,
    this.selfLinkWithId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'byoipApiVersion': ?byoipApiVersion,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'ipCidrRange': ?ipCidrRange,
      'isLiveMigration': ?isLiveMigration,
      'kind': ?kind,
      'mode': ?mode,
      'name': ?name,
      'parentPrefix': ?parentPrefix,
      'publicDelegatedSubPrefixs': ?(() { final guardedValue = publicDelegatedSubPrefixs; if (guardedValue == null) return null; return pulumi.Input.encodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'status': ?status,
    };
  }

  factory GetPublicDelegatedPrefixResult.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixResult(
      allocatablePrefixLength: (() { final guardedValue = map['allocatablePrefixLength']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      byoipApiVersion: (() { final guardedValue = map['byoipApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isLiveMigration: (() { final guardedValue = map['isLiveMigration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentPrefix: (() { final guardedValue = map['parentPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicDelegatedSubPrefixs: (() { final guardedValue = map['publicDelegatedSubPrefixs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse>(guardedValue, (value) => PublicDelegatedPrefixPublicDelegatedSubPrefixResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
