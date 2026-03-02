// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_device_list_response.dart';
import 'android_matrix_response.dart';
import 'ios_device_list_response.dart';

/// The matrix of environments in which the test is to be executed.
class EnvironmentMatrixResponse {
  /// A list of Android devices; the test will be run only on the specified devices.
  final pulumi.Input<AndroidDeviceListResponse> androidDeviceList;
  /// A matrix of Android devices.
  final pulumi.Input<AndroidMatrixResponse> androidMatrix;
  /// A list of iOS devices.
  final pulumi.Input<IosDeviceListResponse> iosDeviceList;

  /// Creates a new [EnvironmentMatrixResponse].
  /// [androidDeviceList] A list of Android devices; the test will be run only on the specified devices.
  /// [androidMatrix] A matrix of Android devices.
  /// [iosDeviceList] A list of iOS devices.
  EnvironmentMatrixResponse({
    required this.androidDeviceList,
    required this.androidMatrix,
    required this.iosDeviceList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidDeviceList': pulumi.Input.mapInputValue<AndroidDeviceListResponse, Map<String, dynamic>>(androidDeviceList, (value) => value.toMap()),
      'androidMatrix': pulumi.Input.mapInputValue<AndroidMatrixResponse, Map<String, dynamic>>(androidMatrix, (value) => value.toMap()),
      'iosDeviceList': pulumi.Input.mapInputValue<IosDeviceListResponse, Map<String, dynamic>>(iosDeviceList, (value) => value.toMap()),
    };
  }

  factory EnvironmentMatrixResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentMatrixResponse(
      androidDeviceList: (AndroidDeviceListResponse.fromMap((map['androidDeviceList'] as Map).cast<String, dynamic>())).input(),
      androidMatrix: (AndroidMatrixResponse.fromMap((map['androidMatrix'] as Map).cast<String, dynamic>())).input(),
      iosDeviceList: (IosDeviceListResponse.fromMap((map['iosDeviceList'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

