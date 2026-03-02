// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix_compute_beta.dart';

/// {@template pulumi_compute_beta_global_public_delegated_prefix_compute_beta_args_doc}
/// The set of arguments for GlobalPublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_global_public_delegated_prefix_compute_beta_args_doc}
class GlobalPublicDelegatedPrefixComputeBetaArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;
  /// If true, the prefix will be live migrated.
  final pulumi.Input<bool>? isLiveMigration;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final pulumi.Input<String>? parentPrefix;
  final pulumi.Input<String>? project;
  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final pulumi.Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta>>? publicDelegatedSubPrefixs;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [GlobalPublicDelegatedPrefixComputeBetaArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [project] Optional.
  /// [publicDelegatedSubPrefixs] The list of sub public delegated prefixes that exist for this public delegated prefix.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  GlobalPublicDelegatedPrefixComputeBetaArgs({
    this.description,
    this.ipCidrRange,
    this.isLiveMigration,
    this.name,
    this.parentPrefix,
    this.project,
    this.publicDelegatedSubPrefixs,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipCidrRange': ?ipCidrRange,
      'isLiveMigration': ?isLiveMigration,
      'name': ?name,
      'parentPrefix': ?parentPrefix,
      'project': ?project,
      'publicDelegatedSubPrefixs': ?pulumi.Input.mapOptionalInputValue<List<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta>, List<Map<String, dynamic>>>(publicDelegatedSubPrefixs, (value) => pulumi.Input.encodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestId': ?requestId,
    };
  }

  factory GlobalPublicDelegatedPrefixComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GlobalPublicDelegatedPrefixComputeBetaArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange'] as String).input(),
      isLiveMigration: map['isLiveMigration'] == null ? null : (map['isLiveMigration'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentPrefix: map['parentPrefix'] == null ? null : (map['parentPrefix'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicDelegatedSubPrefixs: map['publicDelegatedSubPrefixs'] == null ? null : (pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta>(map['publicDelegatedSubPrefixs'], (value) => PublicDelegatedPrefixPublicDelegatedSubPrefixComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
    );
  }
}

