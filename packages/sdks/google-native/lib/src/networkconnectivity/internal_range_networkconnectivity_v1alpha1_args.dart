// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_overlaps_item_networkconnectivity_v1alpha1.dart';
import 'internal_range_peering_networkconnectivity_v1alpha1.dart';
import 'internal_range_usage_networkconnectivity_v1alpha1.dart';

/// {@template pulumi_networkconnectivity_v1alpha1_internal_range_networkconnectivity_v1alpha1_args_doc}
/// The set of arguments for InternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1alpha1_internal_range_networkconnectivity_v1alpha1_args_doc}
class InternalRangeNetworkconnectivityV1alpha1Args {
  /// Time when the internal range was created.
  final pulumi.Input<String>? createTime;

  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  final pulumi.Input<String>? internalRangeId;

  /// IP range that this internal range defines.
  final pulumi.Input<String>? ipCidrRange;

  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  final pulumi.Input<String>? network;

  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  final pulumi.Input<
    List<InternalRangeOverlapsItemNetworkconnectivityV1alpha1>
  >?
  overlaps;

  /// The type of peering set for this internal range.
  final pulumi.Input<InternalRangePeeringNetworkconnectivityV1alpha1>? peering;

  /// An alternative to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  final pulumi.Input<int>? prefixLength;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final pulumi.Input<List<String>>? targetCidrRange;

  /// Time when the internal range was updated.
  final pulumi.Input<String>? updateTime;

  /// The type of usage set for this internal range.
  final pulumi.Input<InternalRangeUsageNetworkconnectivityV1alpha1>? usage;

  /// Creates a new [InternalRangeNetworkconnectivityV1alpha1Args].
  /// [createTime] Time when the internal range was created.
  /// [description] A description of this resource.
  /// [internalRangeId] Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/internalRanges/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  /// [ipCidrRange] IP range that this internal range defines.
  /// [labels] User-defined labels.
  /// [location] Optional.
  /// [name] Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  /// [overlaps] Optional. Types of resources that are allowed to overlap with the current internal range.
  /// [peering] The type of peering set for this internal range.
  /// [prefixLength] An alternative to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [targetCidrRange] Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  /// [updateTime] Time when the internal range was updated.
  /// [usage] The type of usage set for this internal range.
  InternalRangeNetworkconnectivityV1alpha1Args({
    this.createTime,
    this.description,
    this.internalRangeId,
    this.ipCidrRange,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.overlaps,
    this.peering,
    this.prefixLength,
    this.project,
    this.requestId,
    this.targetCidrRange,
    this.updateTime,
    this.usage,
  });

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
      'overlaps':
          ?pulumi.Input.mapOptionalInputValue<
            List<InternalRangeOverlapsItemNetworkconnectivityV1alpha1>,
            List<String>
          >(
            overlaps,
            (value) =>
                pulumi.Input.encodeList<
                  InternalRangeOverlapsItemNetworkconnectivityV1alpha1,
                  String
                >(value, (value) => value.wireValue),
          ),
      'peering':
          ?pulumi.Input.mapOptionalInputValue<
            InternalRangePeeringNetworkconnectivityV1alpha1,
            String
          >(peering, (value) => value.wireValue),
      'prefixLength': ?prefixLength,
      'project': ?project,
      'requestId': ?requestId,
      'targetCidrRange': ?targetCidrRange,
      'updateTime': ?updateTime,
      'usage':
          ?pulumi.Input.mapOptionalInputValue<
            InternalRangeUsageNetworkconnectivityV1alpha1,
            String
          >(usage, (value) => value.wireValue),
    };
  }

  factory InternalRangeNetworkconnectivityV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return InternalRangeNetworkconnectivityV1alpha1Args(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internalRangeId: (() {
        final guardedValue = map['internalRangeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipCidrRange: (() {
        final guardedValue = map['ipCidrRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overlaps: (() {
        final guardedValue = map['overlaps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            InternalRangeOverlapsItemNetworkconnectivityV1alpha1
          >(
            guardedValue,
            (value) =>
                InternalRangeOverlapsItemNetworkconnectivityV1alpha1.fromValue(
                  value as String,
                ),
          ),
        );
      })(),
      peering: (() {
        final guardedValue = map['peering'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InternalRangePeeringNetworkconnectivityV1alpha1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      prefixLength: (() {
        final guardedValue = map['prefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
      targetCidrRange: (() {
        final guardedValue = map['targetCidrRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      usage: (() {
        final guardedValue = map['usage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InternalRangeUsageNetworkconnectivityV1alpha1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
