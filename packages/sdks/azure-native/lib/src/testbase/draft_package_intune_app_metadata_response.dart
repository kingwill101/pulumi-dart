// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_intune_app_metadata_item_response.dart';

/// The metadata of Intune app(s) used for generation.
class DraftPackageIntuneAppMetadataResponse {
  /// The Metadata of the Intune App through intunewin file uploading.
  final pulumi.Input<DraftPackageIntuneAppMetadataItemResponse>? intuneApp;
  /// The Metadata of dependencies of the Intune App through intunewin file uploading.
  final pulumi.Input<List<DraftPackageIntuneAppMetadataItemResponse>>? intuneAppDependencies;

  /// Creates a new [DraftPackageIntuneAppMetadataResponse].
  /// [intuneApp] The Metadata of the Intune App through intunewin file uploading.
  /// [intuneAppDependencies] The Metadata of dependencies of the Intune App through intunewin file uploading.
  DraftPackageIntuneAppMetadataResponse({
    this.intuneApp,
    this.intuneAppDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intuneApp': ?pulumi.Input.mapOptionalInputValue<DraftPackageIntuneAppMetadataItemResponse, Map<String, dynamic>>(intuneApp, (value) => value.toMap()),
      'intuneAppDependencies': ?pulumi.Input.mapOptionalInputValue<List<DraftPackageIntuneAppMetadataItemResponse>, List<Map<String, dynamic>>>(intuneAppDependencies, (value) => pulumi.Input.encodeList<DraftPackageIntuneAppMetadataItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DraftPackageIntuneAppMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DraftPackageIntuneAppMetadataResponse(
      intuneApp: map['intuneApp'] == null ? null : (DraftPackageIntuneAppMetadataItemResponse.fromMap((map['intuneApp'] as Map).cast<String, dynamic>())).input(),
      intuneAppDependencies: map['intuneAppDependencies'] == null ? null : (pulumi.Input.decodeList<DraftPackageIntuneAppMetadataItemResponse>(map['intuneAppDependencies'], (value) => DraftPackageIntuneAppMetadataItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

