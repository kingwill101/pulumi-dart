// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JobStorageAccount resources.
class JobStorageAccountState {
  /// The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  final pulumi.Input<String?>? authenticationMode;
  final pulumi.Input<String?>? storageAccountKey;
  final pulumi.Input<String?>? storageAccountName;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? streamAnalyticsJobId;

  /// Creates a new [JobStorageAccountState].
  /// [authenticationMode] The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  /// [storageAccountKey] Optional.
  /// [storageAccountName] Optional.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  const JobStorageAccountState({
    this.authenticationMode,
    this.storageAccountKey,
    this.storageAccountName,
    this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': ?storageAccountName,
      'streamAnalyticsJobId': ?streamAnalyticsJobId,
    };
  }

  factory JobStorageAccountState.fromMap(Map<String, dynamic> map) {
    return JobStorageAccountState(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobId: (() { final guardedValue = map['streamAnalyticsJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
