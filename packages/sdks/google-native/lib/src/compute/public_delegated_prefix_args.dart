// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_mode.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix.dart';

/// {@template pulumi_compute_alpha_public_delegated_prefix_args_doc}
/// The set of arguments for PublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_public_delegated_prefix_args_doc}
class PublicDelegatedPrefixArgs {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final pulumi.Input<int>? allocatablePrefixLength;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;
  /// If true, the prefix will be live migrated.
  final pulumi.Input<bool>? isLiveMigration;
  /// The public delegated prefix mode for IPv6 only.
  final pulumi.Input<PublicDelegatedPrefixMode>? mode;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final pulumi.Input<String>? parentPrefix;
  final pulumi.Input<String>? project;
  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final pulumi.Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>? publicDelegatedSubPrefixs;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [PublicDelegatedPrefixArgs].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [mode] The public delegated prefix mode for IPv6 only.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [project] Optional.
  /// [publicDelegatedSubPrefixs] The list of sub public delegated prefixes that exist for this public delegated prefix.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  PublicDelegatedPrefixArgs({
    pulumi.Output<int>? allocatablePrefixLength,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<bool>? isLiveMigration,
    pulumi.Output<PublicDelegatedPrefixMode>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentPrefix,
    pulumi.Output<String>? project,
    pulumi.Output<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>? publicDelegatedSubPrefixs,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
  }) :
      allocatablePrefixLength = pulumi.Input.asOptionalInput<int>(allocatablePrefixLength),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      isLiveMigration = pulumi.Input.asOptionalInput<bool>(isLiveMigration),
      mode = pulumi.Input.asOptionalInput<PublicDelegatedPrefixMode>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentPrefix = pulumi.Input.asOptionalInput<String>(parentPrefix),
      project = pulumi.Input.asOptionalInput<String>(project),
      publicDelegatedSubPrefixs = pulumi.Input.asOptionalInput<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>(publicDelegatedSubPrefixs),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'description': ?description,
      'ipCidrRange': ?ipCidrRange,
      'isLiveMigration': ?isLiveMigration,
      'mode': ?pulumi.Input.mapOptionalInputValue<PublicDelegatedPrefixMode, String>(mode, (value) => value.value),
      'name': ?name,
      'parentPrefix': ?parentPrefix,
      'project': ?project,
      'publicDelegatedSubPrefixs': ?pulumi.Input.mapOptionalInputValue<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>, List<Map<String, dynamic>>>(publicDelegatedSubPrefixs, (value) => pulumi.Input.encodeList<PublicDelegatedPrefixPublicDelegatedSubPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory PublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixArgs(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null ? null : pulumi.Output.create<int>(map['allocatablePrefixLength'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      isLiveMigration: map['isLiveMigration'] == null ? null : pulumi.Output.create<bool>(map['isLiveMigration'] as bool),
      mode: map['mode'] == null ? null : pulumi.Output.create<PublicDelegatedPrefixMode>(PublicDelegatedPrefixMode.fromValue(map['mode'] as String)),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentPrefix: map['parentPrefix'] == null ? null : pulumi.Output.create<String>(map['parentPrefix'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicDelegatedSubPrefixs: map['publicDelegatedSubPrefixs'] == null ? null : pulumi.Output.create<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>(pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefix>(map['publicDelegatedSubPrefixs'], (value) => PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap((value as Map).cast<String, dynamic>()))),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

