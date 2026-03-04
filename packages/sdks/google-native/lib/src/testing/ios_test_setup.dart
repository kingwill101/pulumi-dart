// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';
import 'ios_device_file.dart';

/// A description of how to set up an iOS device prior to running the test.
class IosTestSetup {
  /// iOS apps to install in addition to those being directly tested.
  final pulumi.Input<List<FileReference>>? additionalIpas;

  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final pulumi.Input<String>? networkProfile;

  /// List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.
  final pulumi.Input<List<IosDeviceFile>>? pullDirectories;

  /// List of files to push to the device before starting the test.
  final pulumi.Input<List<IosDeviceFile>>? pushFiles;

  /// Creates a new [IosTestSetup].
  /// [additionalIpas] iOS apps to install in addition to those being directly tested.
  /// [networkProfile] The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  /// [pullDirectories] List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.
  /// [pushFiles] List of files to push to the device before starting the test.
  IosTestSetup({
    this.additionalIpas,
    this.networkProfile,
    this.pullDirectories,
    this.pushFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalIpas':
          ?pulumi.Input.mapOptionalInputValue<
            List<FileReference>,
            List<Map<String, dynamic>>
          >(
            additionalIpas,
            (value) =>
                pulumi.Input.encodeList<FileReference, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'networkProfile': ?networkProfile,
      'pullDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<IosDeviceFile>,
            List<Map<String, dynamic>>
          >(
            pullDirectories,
            (value) =>
                pulumi.Input.encodeList<IosDeviceFile, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'pushFiles':
          ?pulumi.Input.mapOptionalInputValue<
            List<IosDeviceFile>,
            List<Map<String, dynamic>>
          >(
            pushFiles,
            (value) =>
                pulumi.Input.encodeList<IosDeviceFile, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory IosTestSetup.fromMap(Map<String, dynamic> map) {
    return IosTestSetup(
      additionalIpas: (() {
        final guardedValue = map['additionalIpas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FileReference>(
            guardedValue,
            (value) =>
                FileReference.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pullDirectories: (() {
        final guardedValue = map['pullDirectories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IosDeviceFile>(
            guardedValue,
            (value) =>
                IosDeviceFile.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      pushFiles: (() {
        final guardedValue = map['pushFiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IosDeviceFile>(
            guardedValue,
            (value) =>
                IosDeviceFile.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
