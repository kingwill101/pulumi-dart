// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sip_trunk_connection_error_detail.dart';

class SipTrunkConnection {
  /// (Output)
  /// Output only. The unique identifier of the connection.
  final pulumi.Input<String?>? connectionId;
  /// (Output)
  /// Output only. The error details of the connection.
  /// Structure is documented below.
  final pulumi.Input<List<SipTrunkConnectionErrorDetail>?>? errorDetails;
  /// (Output)
  /// Output only. The state of the connection.
  final pulumi.Input<String?>? state;
  /// (Output)
  /// Output only. The last update time of the connection.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [SipTrunkConnection].
  /// [connectionId] (Output)
  /// [errorDetails] (Output)
  /// [state] (Output)
  /// [updateTime] (Output)
  const SipTrunkConnection({
    this.connectionId,
    this.errorDetails,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<List<SipTrunkConnectionErrorDetail>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<SipTrunkConnectionErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory SipTrunkConnection.fromMap(Map<String, dynamic> map) {
    return SipTrunkConnection(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SipTrunkConnectionErrorDetail>(guardedValue, (value) => SipTrunkConnectionErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
