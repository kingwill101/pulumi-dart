// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_intune_app_metadata_item.dart';

/// The metadata of Intune app(s) used for generation.
class DraftPackageIntuneAppMetadata {
  /// The Metadata of the Intune App through intunewin file uploading.
  final pulumi.Input<DraftPackageIntuneAppMetadataItem>? intuneApp;
  /// The Metadata of dependencies of the Intune App through intunewin file uploading.
  final pulumi.Input<List<DraftPackageIntuneAppMetadataItem>>? intuneAppDependencies;

  /// Creates a new [DraftPackageIntuneAppMetadata].
  /// [intuneApp] The Metadata of the Intune App through intunewin file uploading.
  /// [intuneAppDependencies] The Metadata of dependencies of the Intune App through intunewin file uploading.
  DraftPackageIntuneAppMetadata({
    this.intuneApp,
    this.intuneAppDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intuneApp': ?pulumi.Input.mapOptionalInputValue<DraftPackageIntuneAppMetadataItem, Map<String, dynamic>>(intuneApp, (value) => value.toMap()),
      'intuneAppDependencies': ?pulumi.Input.mapOptionalInputValue<List<DraftPackageIntuneAppMetadataItem>, List<Map<String, dynamic>>>(intuneAppDependencies, (value) => pulumi.Input.encodeList<DraftPackageIntuneAppMetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DraftPackageIntuneAppMetadata.fromMap(Map<String, dynamic> map) {
    return DraftPackageIntuneAppMetadata(
      intuneApp: map['intuneApp'] == null ? null : (DraftPackageIntuneAppMetadataItem.fromMap((map['intuneApp'] as Map).cast<String, dynamic>())).input(),
      intuneAppDependencies: map['intuneAppDependencies'] == null ? null : (pulumi.Input.decodeList<DraftPackageIntuneAppMetadataItem>(map['intuneAppDependencies'], (value) => DraftPackageIntuneAppMetadataItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

