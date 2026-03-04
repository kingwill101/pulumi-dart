// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_deployment_file.dart';
import 'standard_app_version_deployment_zip.dart';

class StandardAppVersionDeployment {
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// All files must be readable using the credentials supplied with this call.
  /// Structure is documented below.
  final pulumi.Input<List<StandardAppVersionDeploymentFile>>? files;

  /// Zip File
  /// Structure is documented below.
  final pulumi.Input<StandardAppVersionDeploymentZip>? zip;

  /// Creates a new [StandardAppVersionDeployment].
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// [zip] Zip File
  StandardAppVersionDeployment({this.files, this.zip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files':
          ?pulumi.Input.mapOptionalInputValue<
            List<StandardAppVersionDeploymentFile>,
            List<Map<String, dynamic>>
          >(
            files,
            (value) =>
                pulumi.Input.encodeList<
                  StandardAppVersionDeploymentFile,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'zip':
          ?pulumi.Input.mapOptionalInputValue<
            StandardAppVersionDeploymentZip,
            Map<String, dynamic>
          >(zip, (value) => value.toMap()),
    };
  }

  factory StandardAppVersionDeployment.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionDeployment(
      files: (() {
        final guardedValue = map['files'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StandardAppVersionDeploymentFile>(
            guardedValue,
            (value) => StandardAppVersionDeploymentFile.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      zip: (() {
        final guardedValue = map['zip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StandardAppVersionDeploymentZip.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
