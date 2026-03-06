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
  const DraftPackageIntuneAppMetadata({
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
      intuneApp: (() { final guardedValue = map['intuneApp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DraftPackageIntuneAppMetadataItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intuneAppDependencies: (() { final guardedValue = map['intuneAppDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DraftPackageIntuneAppMetadataItem>(guardedValue, (value) => DraftPackageIntuneAppMetadataItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

