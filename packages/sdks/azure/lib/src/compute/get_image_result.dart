// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_data_disk.dart';
import 'get_image_os_disk.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// a collection of `dataDisk` blocks as defined below.
  final List<GetImageDataDisk>? dataDisks;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// the Azure Location where this Image exists.
  final String? location;
  /// the name of the Image.
  final String? name;
  final String? nameRegex;
  /// a `osDisk` block as defined below.
  final List<GetImageOsDisk>? osDisks;
  final String? resourceGroupName;
  final bool? sortDescending;
  /// a mapping of tags to assigned to the resource.
  final Map<String, String>? tags;
  /// is zone resiliency enabled?
  final bool? zoneResilient;

  /// Creates a new [GetImageResult].
  /// [dataDisks] a collection of `dataDisk` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] the Azure Location where this Image exists.
  /// [name] the name of the Image.
  /// [nameRegex] Optional.
  /// [osDisks] a `osDisk` block as defined below.
  /// [resourceGroupName] Optional.
  /// [sortDescending] Optional.
  /// [tags] a mapping of tags to assigned to the resource.
  /// [zoneResilient] is zone resiliency enabled?
  const GetImageResult({
    this.dataDisks,
    this.id,
    this.location,
    this.name,
    this.nameRegex,
    this.osDisks,
    this.resourceGroupName,
    this.sortDescending,
    this.tags,
    this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?(() { final guardedValue = dataDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageDataDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'osDisks': ?(() { final guardedValue = osDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageOsDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'sortDescending': ?sortDescending,
      'tags': ?tags,
      'zoneResilient': ?zoneResilient,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageDataDisk>(guardedValue, (value) => GetImageDataDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osDisks: (() { final guardedValue = map['osDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageOsDisk>(guardedValue, (value) => GetImageOsDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortDescending: (() { final guardedValue = map['sortDescending']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneResilient: (() { final guardedValue = map['zoneResilient']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
