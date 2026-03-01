// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_overlaps_item.dart';
import 'internal_range_peering.dart';
import 'internal_range_usage.dart';

/// {@template pulumi_networkconnectivity_v1_internal_range_args_doc}
/// The set of arguments for InternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_internal_range_args_doc}
class InternalRangeArgs {
  /// Time when the internal range was created.
  final pulumi.Input<String>? createTime;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  final pulumi.Input<String>? internalRangeId;
  /// The IP range that this internal range defines.
  final pulumi.Input<String>? ipCidrRange;
  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;
  /// The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  final pulumi.Input<String>? network;
  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  final pulumi.Input<List<InternalRangeOverlapsItem>>? overlaps;
  /// The type of peering set for this internal range.
  final pulumi.Input<InternalRangePeering>? peering;
  /// An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final pulumi.Input<List<String>>? targetCidrRange;
  /// Time when the internal range was updated.
  final pulumi.Input<String>? updateTime;
  /// The type of usage set for this InternalRange.
  final pulumi.Input<InternalRangeUsage>? usage;

  /// Creates a new [InternalRangeArgs].
  /// [createTime] Time when the internal range was created.
  /// [description] A description of this resource.
  /// [internalRangeId] Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  /// [ipCidrRange] The IP range that this internal range defines.
  /// [labels] User-defined labels.
  /// [location] Optional.
  /// [name] Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  /// [overlaps] Optional. Types of resources that are allowed to overlap with the current internal range.
  /// [peering] The type of peering set for this internal range.
  /// [prefixLength] An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [targetCidrRange] Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  /// [updateTime] Time when the internal range was updated.
  /// [usage] The type of usage set for this InternalRange.
  InternalRangeArgs({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? internalRangeId,
    pulumi.Output<String>? ipCidrRange,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<List<InternalRangeOverlapsItem>>? overlaps,
    pulumi.Output<InternalRangePeering>? peering,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<String>>? targetCidrRange,
    pulumi.Output<String>? updateTime,
    pulumi.Output<InternalRangeUsage>? usage,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      internalRangeId = pulumi.Input.asOptionalInput<String>(internalRangeId),
      ipCidrRange = pulumi.Input.asOptionalInput<String>(ipCidrRange),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      overlaps = pulumi.Input.asOptionalInput<List<InternalRangeOverlapsItem>>(overlaps),
      peering = pulumi.Input.asOptionalInput<InternalRangePeering>(peering),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      targetCidrRange = pulumi.Input.asOptionalInput<List<String>>(targetCidrRange),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      usage = pulumi.Input.asOptionalInput<InternalRangeUsage>(usage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'internalRangeId': ?internalRangeId,
      'ipCidrRange': ?ipCidrRange,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'overlaps': ?pulumi.Input.mapOptionalInputValue<List<InternalRangeOverlapsItem>, List<String>>(overlaps, (value) => pulumi.Input.encodeList<InternalRangeOverlapsItem, String>(value, (value) => value.value)),
      'peering': ?pulumi.Input.mapOptionalInputValue<InternalRangePeering, String>(peering, (value) => value.value),
      'prefixLength': ?prefixLength,
      'project': ?project,
      'requestId': ?requestId,
      'targetCidrRange': ?targetCidrRange,
      'updateTime': ?updateTime,
      'usage': ?pulumi.Input.mapOptionalInputValue<InternalRangeUsage, String>(usage, (value) => value.value),
    };
  }

  factory InternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return InternalRangeArgs(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      internalRangeId: map['internalRangeId'] == null ? null : pulumi.Output.create<String>(map['internalRangeId'] as String),
      ipCidrRange: map['ipCidrRange'] == null ? null : pulumi.Output.create<String>(map['ipCidrRange'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      overlaps: map['overlaps'] == null ? null : pulumi.Output.create<List<InternalRangeOverlapsItem>>(pulumi.Input.decodeList<InternalRangeOverlapsItem>(map['overlaps'], (value) => InternalRangeOverlapsItem.fromValue(value as String))),
      peering: map['peering'] == null ? null : pulumi.Output.create<InternalRangePeering>(InternalRangePeering.fromValue(map['peering'] as String)),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      targetCidrRange: map['targetCidrRange'] == null ? null : pulumi.Output.create<List<String>>((map['targetCidrRange'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      usage: map['usage'] == null ? null : pulumi.Output.create<InternalRangeUsage>(InternalRangeUsage.fromValue(map['usage'] as String)),
    );
  }
}

