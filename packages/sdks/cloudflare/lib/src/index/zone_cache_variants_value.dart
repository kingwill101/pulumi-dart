// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneCacheVariantsValue {
  /// List of strings with the MIME types of all the variants that should be served for avif.
  final pulumi.Input<List<String>?>? avifs;
  /// List of strings with the MIME types of all the variants that should be served for bmp.
  final pulumi.Input<List<String>?>? bmps;
  /// List of strings with the MIME types of all the variants that should be served for gif.
  final pulumi.Input<List<String>?>? gifs;
  /// List of strings with the MIME types of all the variants that should be served for jp2.
  final pulumi.Input<List<String>?>? jp2s;
  /// List of strings with the MIME types of all the variants that should be served for jpeg.
  final pulumi.Input<List<String>?>? jpegs;
  /// List of strings with the MIME types of all the variants that should be served for jpg2.
  final pulumi.Input<List<String>?>? jpg2s;
  /// List of strings with the MIME types of all the variants that should be served for jpg.
  final pulumi.Input<List<String>?>? jpgs;
  /// List of strings with the MIME types of all the variants that should be served for png.
  final pulumi.Input<List<String>?>? pngs;
  /// List of strings with the MIME types of all the variants that should be served for tiff.
  final pulumi.Input<List<String>?>? tiffs;
  /// List of strings with the MIME types of all the variants that should be served for tif.
  final pulumi.Input<List<String>?>? tifs;
  /// List of strings with the MIME types of all the variants that should be served for webp.
  final pulumi.Input<List<String>?>? webps;

  /// Creates a new [ZoneCacheVariantsValue].
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
  const ZoneCacheVariantsValue({
    this.avifs,
    this.bmps,
    this.gifs,
    this.jp2s,
    this.jpegs,
    this.jpg2s,
    this.jpgs,
    this.pngs,
    this.tiffs,
    this.tifs,
    this.webps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avifs': ?avifs,
      'bmps': ?bmps,
      'gifs': ?gifs,
      'jp2s': ?jp2s,
      'jpegs': ?jpegs,
      'jpg2s': ?jpg2s,
      'jpgs': ?jpgs,
      'pngs': ?pngs,
      'tiffs': ?tiffs,
      'tifs': ?tifs,
      'webps': ?webps,
    };
  }

  factory ZoneCacheVariantsValue.fromMap(Map<String, dynamic> map) {
    return ZoneCacheVariantsValue(
      avifs: (() { final guardedValue = map['avifs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bmps: (() { final guardedValue = map['bmps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gifs: (() { final guardedValue = map['gifs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jp2s: (() { final guardedValue = map['jp2s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jpegs: (() { final guardedValue = map['jpegs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jpg2s: (() { final guardedValue = map['jpg2s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jpgs: (() { final guardedValue = map['jpgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pngs: (() { final guardedValue = map['pngs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tiffs: (() { final guardedValue = map['tiffs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tifs: (() { final guardedValue = map['tifs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      webps: (() { final guardedValue = map['webps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
