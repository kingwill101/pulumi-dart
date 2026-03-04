// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_part_metadata_response.dart';
import 'dashboard_parts_position_response.dart';

/// A dashboard part.
class DashboardPartsResponse {
  /// The dashboard's part metadata.
  final pulumi.Input<DashboardPartMetadataResponse>? metadata;

  /// The dashboard's part position.
  final pulumi.Input<DashboardPartsPositionResponse> position;

  /// Creates a new [DashboardPartsResponse].
  /// [metadata] The dashboard's part metadata.
  /// [position] The dashboard's part position.
  DashboardPartsResponse({this.metadata, required this.position});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            DashboardPartMetadataResponse,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'position':
          pulumi.Input.mapInputValue<
            DashboardPartsPositionResponse,
            Map<String, dynamic>
          >(position, (value) => value.toMap()),
    };
  }

  factory DashboardPartsResponse.fromMap(Map<String, dynamic> map) {
    return DashboardPartsResponse(
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DashboardPartMetadataResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      position: pulumi.Input.fromValue(
        DashboardPartsPositionResponse.fromMap(
          (map['position']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
