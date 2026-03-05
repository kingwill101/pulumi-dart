// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_image_data_disk.dart';
import 'get_images_image_os_disk.dart';

class GetImagesImage {
  /// One or more `data_disk` blocks as defined below.
  final pulumi.Input<List<GetImagesImageDataDisk>> dataDisks;
  /// The supported Azure location where the Image exists.
  final pulumi.Input<String> location;
  /// The name of the Image.
  final pulumi.Input<String> name;
  /// An `os_disk` block as defined below.
  final pulumi.Input<List<GetImagesImageOsDisk>> osDisks;
  /// A mapping of tags assigned to the Image.
  final pulumi.Input<Map<String, String>> tags;
  /// Is zone resiliency enabled?
  final pulumi.Input<bool> zoneResilient;

  /// Creates a new [GetImagesImage].
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [location] The supported Azure location where the Image exists.
  /// [name] The name of the Image.
  /// [osDisks] An `os_disk` block as defined below.
  /// [tags] A mapping of tags assigned to the Image.
  /// [zoneResilient] Is zone resiliency enabled?
  GetImagesImage({
    required this.dataDisks,
    required this.location,
    required this.name,
    required this.osDisks,
    required this.tags,
    required this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': pulumi.Input.mapInputValue<List<GetImagesImageDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<GetImagesImageDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'name': name,
      'osDisks': pulumi.Input.mapInputValue<List<GetImagesImageOsDisk>, List<Map<String, dynamic>>>(osDisks, (value) => pulumi.Input.encodeList<GetImagesImageOsDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': tags,
      'zoneResilient': zoneResilient,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      dataDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImagesImageDataDisk>(map['dataDisks']!, (value) => GetImagesImageDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      osDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImagesImageOsDisk>(map['osDisks']!, (value) => GetImagesImageOsDisk.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      zoneResilient: pulumi.Input.fromValue(map['zoneResilient'] as bool),
    );
  }
}

