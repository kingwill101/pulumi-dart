// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneCacheVariantsValue {
  /// List of strings with the MIME types of all the variants that should be served for avif.
  final pulumi.Input<List<String>> avifs;
  /// List of strings with the MIME types of all the variants that should be served for bmp.
  final pulumi.Input<List<String>> bmps;
  /// List of strings with the MIME types of all the variants that should be served for gif.
  final pulumi.Input<List<String>> gifs;
  /// List of strings with the MIME types of all the variants that should be served for jp2.
  final pulumi.Input<List<String>> jp2s;
  /// List of strings with the MIME types of all the variants that should be served for jpeg.
  final pulumi.Input<List<String>> jpegs;
  /// List of strings with the MIME types of all the variants that should be served for jpg2.
  final pulumi.Input<List<String>> jpg2s;
  /// List of strings with the MIME types of all the variants that should be served for jpg.
  final pulumi.Input<List<String>> jpgs;
  /// List of strings with the MIME types of all the variants that should be served for png.
  final pulumi.Input<List<String>> pngs;
  /// List of strings with the MIME types of all the variants that should be served for tiff.
  final pulumi.Input<List<String>> tiffs;
  /// List of strings with the MIME types of all the variants that should be served for tif.
  final pulumi.Input<List<String>> tifs;
  /// List of strings with the MIME types of all the variants that should be served for webp.
  final pulumi.Input<List<String>> webps;

  /// Creates a new [GetZoneCacheVariantsValue].
  /// [avifs] List of strings with the MIME types of all the variants that should be served for avif.
  /// [bmps] List of strings with the MIME types of all the variants that should be served for bmp.
  /// [gifs] List of strings with the MIME types of all the variants that should be served for gif.
  /// [jp2s] List of strings with the MIME types of all the variants that should be served for jp2.
  /// [jpegs] List of strings with the MIME types of all the variants that should be served for jpeg.
  /// [jpg2s] List of strings with the MIME types of all the variants that should be served for jpg2.
  /// [jpgs] List of strings with the MIME types of all the variants that should be served for jpg.
  /// [pngs] List of strings with the MIME types of all the variants that should be served for png.
  /// [tiffs] List of strings with the MIME types of all the variants that should be served for tiff.
  /// [tifs] List of strings with the MIME types of all the variants that should be served for tif.
  /// [webps] List of strings with the MIME types of all the variants that should be served for webp.
  const GetZoneCacheVariantsValue({
    required this.avifs,
    required this.bmps,
    required this.gifs,
    required this.jp2s,
    required this.jpegs,
    required this.jpg2s,
    required this.jpgs,
    required this.pngs,
    required this.tiffs,
    required this.tifs,
    required this.webps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avifs': avifs,
      'bmps': bmps,
      'gifs': gifs,
      'jp2s': jp2s,
      'jpegs': jpegs,
      'jpg2s': jpg2s,
      'jpgs': jpgs,
      'pngs': pngs,
      'tiffs': tiffs,
      'tifs': tifs,
      'webps': webps,
    };
  }

  factory GetZoneCacheVariantsValue.fromMap(Map<String, dynamic> map) {
    return GetZoneCacheVariantsValue(
      avifs: pulumi.Input.fromValue((map['avifs'] as List).cast<String>()),
      bmps: pulumi.Input.fromValue((map['bmps'] as List).cast<String>()),
      gifs: pulumi.Input.fromValue((map['gifs'] as List).cast<String>()),
      jp2s: pulumi.Input.fromValue((map['jp2s'] as List).cast<String>()),
      jpegs: pulumi.Input.fromValue((map['jpegs'] as List).cast<String>()),
      jpg2s: pulumi.Input.fromValue((map['jpg2s'] as List).cast<String>()),
      jpgs: pulumi.Input.fromValue((map['jpgs'] as List).cast<String>()),
      pngs: pulumi.Input.fromValue((map['pngs'] as List).cast<String>()),
      tiffs: pulumi.Input.fromValue((map['tiffs'] as List).cast<String>()),
      tifs: pulumi.Input.fromValue((map['tifs'] as List).cast<String>()),
      webps: pulumi.Input.fromValue((map['webps'] as List).cast<String>()),
    );
  }
}
