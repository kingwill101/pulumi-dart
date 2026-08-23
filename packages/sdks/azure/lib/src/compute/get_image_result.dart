// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_data_disk.dart';
import 'get_image_os_disk.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// a collection of `dataDisk` blocks as defined below.
  final List<GetImageDataDisk> dataDisks;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// the Azure Location where this Image exists.
  final String location;
  /// the name of the Image.
  final String? name;
  final String? nameRegex;
  /// a `osDisk` block as defined below.
  final List<GetImageOsDisk> osDisks;
  final String resourceGroupName;
  final bool? sortDescending;
  /// a mapping of tags to assigned to the resource.
  final Map<String, String> tags;
  /// is zone resiliency enabled?
  final bool zoneResilient;

  /// Creates a new [GetImageResult].
  /// [dataDisks] a collection of `dataDisk` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] the Azure Location where this Image exists.
  /// [name] the name of the Image.
  /// [nameRegex] Optional.
  /// [osDisks] a `osDisk` block as defined below.
  /// [resourceGroupName] Required.
  /// [sortDescending] Optional.
  /// [tags] a mapping of tags to assigned to the resource.
  /// [zoneResilient] is zone resiliency enabled?
  const GetImageResult({
    required this.dataDisks,
    required this.id,
    required this.location,
    this.name,
    this.nameRegex,
    required this.osDisks,
    required this.resourceGroupName,
    this.sortDescending,
    required this.tags,
    required this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': pulumi.Input.encodeList<GetImageDataDisk, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'osDisks': pulumi.Input.encodeList<GetImageOsDisk, Map<String, dynamic>>(osDisks, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sortDescending': ?sortDescending,
      'tags': tags,
      'zoneResilient': zoneResilient,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      dataDisks: pulumi.Input.decodeList<GetImageDataDisk>(map['dataDisks']!, (value) => GetImageDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDisks: pulumi.Input.decodeList<GetImageOsDisk>(map['osDisks']!, (value) => GetImageOsDisk.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      sortDescending: (() { final guardedValue = map['sortDescending']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (map['tags'] as Map).cast<String, String>(),
      zoneResilient: map['zoneResilient'] as bool,
    );
  }
}
