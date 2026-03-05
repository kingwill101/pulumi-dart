import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_args.dart';
import 'job_template_config.dart';
import 'job_template_state.dart';

/// Transcoding Job Template Resource
///
///
/// To get more information about JobTemplate, see:
///
/// * [API documentation](https://cloud.google.com/transcoder/docs/reference/rest/v1/projects.locations.jobTemplates)
/// * How-to Guides
/// * [Transcoder](https://cloud.google.com/transcoder/docs/)
///
/// ## Example Usage
///
/// ### Transcoder Job Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.transcoder.JobTemplate("default", {
///     jobTemplateId: "example-job-template",
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///         }],
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.transcoder.JobTemplate("default",
///     job_template_id="example-job-template",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///         }],
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels={
///         "label": "key",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Transcoder.JobTemplate("default", new()
///     {
///         JobTemplateId = "example-job-template",
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobTemplateConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigInputArgs
///                 {
///                     Key = "input0",
///                 },
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transcoder.NewJobTemplate(ctx, "default", &transcoder.JobTemplateArgs{
/// 			JobTemplateId: pulumi.String("example-job-template"),
/// 			Location:      pulumi.String("us-central1"),
/// 			Config: &transcoder.JobTemplateConfigArgs{
/// 				Inputs: transcoder.JobTemplateConfigInputTypeArray{
/// 					&transcoder.JobTemplateConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 					},
/// 				},
/// 				EditLists: transcoder.JobTemplateConfigEditListArray{
/// 					&transcoder.JobTemplateConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobTemplateConfigAdBreakArray{
/// 					&transcoder.JobTemplateConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobTemplateConfigElementaryStreamArray{
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobTemplateConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobTemplateConfigMuxStreamArray{
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.transcoder.JobTemplate;
/// import com.pulumi.gcp.transcoder.JobTemplateArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateId("example-job-template")
///             .location("us-central1")
///             .config(JobTemplateConfigArgs.builder()
///                 .inputs(JobTemplateConfigInputArgs.builder()
///                     .key("input0")
///                     .build())
///                 .editLists(JobTemplateConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .adBreaks(JobTemplateConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .elementaryStreams(
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobTemplateConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:transcoder:JobTemplate
///     properties:
///       jobTemplateId: example-job-template
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         adBreaks:
///           - startTimeOffset: 3.500s
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Template Overlays
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.transcoder.JobTemplate("default", {
///     jobTemplateId: "example-job-template",
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: "gs://example/example.mp4",
///         }],
///         output: {
///             uri: "gs://example/outputs/",
///         },
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         overlays: [{
///             animations: [{
///                 animationFade: {
///                     fadeType: "FADE_IN",
///                     startTimeOffset: "1.500s",
///                     endTimeOffset: "3.500s",
///                     xy: {
///                         x: 1,
///                         y: 0.5,
///                     },
///                 },
///             }],
///             image: {
///                 uri: "gs://example/overlay.png",
///             },
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.transcoder.JobTemplate("default",
///     job_template_id="example-job-template",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": "gs://example/example.mp4",
///         }],
///         "output": {
///             "uri": "gs://example/outputs/",
///         },
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "overlays": [{
///             "animations": [{
///                 "animation_fade": {
///                     "fade_type": "FADE_IN",
///                     "start_time_offset": "1.500s",
///                     "end_time_offset": "3.500s",
///                     "xy": {
///                         "x": 1,
///                         "y": 0.5,
///                     },
///                 },
///             }],
///             "image": {
///                 "uri": "gs://example/overlay.png",
///             },
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///     },
///     labels={
///         "label": "key",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Transcoder.JobTemplate("default", new()
///     {
///         JobTemplateId = "example-job-template",
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobTemplateConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = "gs://example/example.mp4",
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobTemplateConfigOutputArgs
///             {
///                 Uri = "gs://example/outputs/",
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             Overlays = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigOverlayArgs
///                 {
///                     Animations = new[]
///                     {
///                         new Gcp.Transcoder.Inputs.JobTemplateConfigOverlayAnimationArgs
///                         {
///                             AnimationFade = new Gcp.Transcoder.Inputs.JobTemplateConfigOverlayAnimationAnimationFadeArgs
///                             {
///                                 FadeType = "FADE_IN",
///                                 StartTimeOffset = "1.500s",
///                                 EndTimeOffset = "3.500s",
///                                 Xy = new Gcp.Transcoder.Inputs.JobTemplateConfigOverlayAnimationAnimationFadeXyArgs
///                                 {
///                                     X = 1,
///                                     Y = 0.5,
///                                 },
///                             },
///                         },
///                     },
///                     Image = new Gcp.Transcoder.Inputs.JobTemplateConfigOverlayImageArgs
///                     {
///                         Uri = "gs://example/overlay.png",
///                     },
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transcoder.NewJobTemplate(ctx, "default", &transcoder.JobTemplateArgs{
/// 			JobTemplateId: pulumi.String("example-job-template"),
/// 			Location:      pulumi.String("us-central1"),
/// 			Config: &transcoder.JobTemplateConfigArgs{
/// 				Inputs: transcoder.JobTemplateConfigInputTypeArray{
/// 					&transcoder.JobTemplateConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.String("gs://example/example.mp4"),
/// 					},
/// 				},
/// 				Output: &transcoder.JobTemplateConfigOutputTypeArgs{
/// 					Uri: pulumi.String("gs://example/outputs/"),
/// 				},
/// 				EditLists: transcoder.JobTemplateConfigEditListArray{
/// 					&transcoder.JobTemplateConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobTemplateConfigAdBreakArray{
/// 					&transcoder.JobTemplateConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				Overlays: transcoder.JobTemplateConfigOverlayArray{
/// 					&transcoder.JobTemplateConfigOverlayArgs{
/// 						Animations: transcoder.JobTemplateConfigOverlayAnimationArray{
/// 							&transcoder.JobTemplateConfigOverlayAnimationArgs{
/// 								AnimationFade: &transcoder.JobTemplateConfigOverlayAnimationAnimationFadeArgs{
/// 									FadeType:        pulumi.String("FADE_IN"),
/// 									StartTimeOffset: pulumi.String("1.500s"),
/// 									EndTimeOffset:   pulumi.String("3.500s"),
/// 									Xy: &transcoder.JobTemplateConfigOverlayAnimationAnimationFadeXyArgs{
/// 										X: pulumi.Float64(1),
/// 										Y: pulumi.Float64(0.5),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Image: &transcoder.JobTemplateConfigOverlayImageArgs{
/// 							Uri: pulumi.String("gs://example/overlay.png"),
/// 						},
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobTemplateConfigElementaryStreamArray{
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobTemplateConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobTemplateConfigMuxStreamArray{
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.transcoder.JobTemplate;
/// import com.pulumi.gcp.transcoder.JobTemplateArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigOutputArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateId("example-job-template")
///             .location("us-central1")
///             .config(JobTemplateConfigArgs.builder()
///                 .inputs(JobTemplateConfigInputArgs.builder()
///                     .key("input0")
///                     .uri("gs://example/example.mp4")
///                     .build())
///                 .output(JobTemplateConfigOutputArgs.builder()
///                     .uri("gs://example/outputs/")
///                     .build())
///                 .editLists(JobTemplateConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .adBreaks(JobTemplateConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .overlays(JobTemplateConfigOverlayArgs.builder()
///                     .animations(JobTemplateConfigOverlayAnimationArgs.builder()
///                         .animationFade(JobTemplateConfigOverlayAnimationAnimationFadeArgs.builder()
///                             .fadeType("FADE_IN")
///                             .startTimeOffset("1.500s")
///                             .endTimeOffset("3.500s")
///                             .xy(JobTemplateConfigOverlayAnimationAnimationFadeXyArgs.builder()
///                                 .x(1.0)
///                                 .y(0.5)
///                                 .build())
///                             .build())
///                         .build())
///                     .image(JobTemplateConfigOverlayImageArgs.builder()
///                         .uri("gs://example/overlay.png")
///                         .build())
///                     .build())
///                 .elementaryStreams(
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobTemplateConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:transcoder:JobTemplate
///     properties:
///       jobTemplateId: example-job-template
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://example/example.mp4
///         output:
///           uri: gs://example/outputs/
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         adBreaks:
///           - startTimeOffset: 3.500s
///         overlays:
///           - animations:
///               - animationFade:
///                   fadeType: FADE_IN
///                   startTimeOffset: 1.500s
///                   endTimeOffset: 3.500s
///                   xy:
///                     x: 1
///                     y: 0.5
///             image:
///               uri: gs://example/overlay.png
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Template Encryptions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const encryptionKey = new gcp.secretmanager.Secret("encryption_key", {
///     secretId: "transcoder-encryption-key",
///     replication: {
///         auto: {},
///     },
/// });
/// const encryptionKeySecretVersion = new gcp.secretmanager.SecretVersion("encryption_key", {
///     secret: encryptionKey.name,
///     secretData: "4A67F2C1B8E93A4F6D3E7890A1BC23DF",
/// });
/// const _default = new gcp.transcoder.JobTemplate("default", {
///     jobTemplateId: "example-job-template",
///     location: "us-central1",
///     config: {
///         elementaryStreams: [
///             {
///                 key: "es_video",
///                 videoStream: {
///                     h264: {
///                         profile: "main",
///                         heightPixels: 600,
///                         widthPixels: 800,
///                         bitrateBps: 1000000,
///                         frameRate: 60,
///                     },
///                 },
///             },
///             {
///                 key: "es_audio",
///                 audioStream: {
///                     codec: "aac",
///                     channelCount: 2,
///                     bitrateBps: 160000,
///                 },
///             },
///         ],
///         encryptions: [
///             {
///                 id: "aes-128",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     clearkey: {},
///                 },
///                 aes128: {},
///             },
///             {
///                 id: "cenc",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     widevine: {},
///                 },
///                 mpegCenc: {
///                     scheme: "cenc",
///                 },
///             },
///             {
///                 id: "cbcs",
///                 secretManagerKeySource: {
///                     secretVersion: encryptionKeySecretVersion.name,
///                 },
///                 drmSystems: {
///                     widevine: {},
///                 },
///                 mpegCenc: {
///                     scheme: "cbcs",
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "ts_aes128",
///                 container: "ts",
///                 elementaryStreams: [
///                     "es_video",
///                     "es_audio",
///                 ],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "aes-128",
///             },
///             {
///                 key: "fmp4_cenc_video",
///                 container: "fmp4",
///                 elementaryStreams: ["es_video"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cenc",
///             },
///             {
///                 key: "fmp4_cenc_audio",
///                 container: "fmp4",
///                 elementaryStreams: ["es_audio"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cenc",
///             },
///             {
///                 key: "fmp4_cbcs_video",
///                 container: "fmp4",
///                 elementaryStreams: ["es_video"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cbcs",
///             },
///             {
///                 key: "fmp4_cbcs_audio",
///                 container: "fmp4",
///                 elementaryStreams: ["es_audio"],
///                 segmentSettings: {
///                     segmentDuration: "6s",
///                 },
///                 encryptionId: "cbcs",
///             },
///         ],
///         manifests: [
///             {
///                 fileName: "manifest_aes128.m3u8",
///                 type: "HLS",
///                 muxStreams: ["ts_aes128"],
///             },
///             {
///                 fileName: "manifest_cenc.mpd",
///                 type: "DASH",
///                 muxStreams: [
///                     "fmp4_cenc_video",
///                     "fmp4_cenc_audio",
///                 ],
///             },
///             {
///                 fileName: "manifest_cbcs.mpd",
///                 type: "DASH",
///                 muxStreams: [
///                     "fmp4_cbcs_video",
///                     "fmp4_cbcs_audio",
///                 ],
///             },
///         ],
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// encryption_key = gcp.secretmanager.Secret("encryption_key",
///     secret_id="transcoder-encryption-key",
///     replication={
///         "auto": {},
///     })
/// encryption_key_secret_version = gcp.secretmanager.SecretVersion("encryption_key",
///     secret=encryption_key.name,
///     secret_data="4A67F2C1B8E93A4F6D3E7890A1BC23DF")
/// default = gcp.transcoder.JobTemplate("default",
///     job_template_id="example-job-template",
///     location="us-central1",
///     config={
///         "elementary_streams": [
///             {
///                 "key": "es_video",
///                 "video_stream": {
///                     "h264": {
///                         "profile": "main",
///                         "height_pixels": 600,
///                         "width_pixels": 800,
///                         "bitrate_bps": 1000000,
///                         "frame_rate": 60,
///                     },
///                 },
///             },
///             {
///                 "key": "es_audio",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "channel_count": 2,
///                     "bitrate_bps": 160000,
///                 },
///             },
///         ],
///         "encryptions": [
///             {
///                 "id": "aes-128",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "clearkey": {},
///                 },
///                 "aes128": {},
///             },
///             {
///                 "id": "cenc",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "widevine": {},
///                 },
///                 "mpeg_cenc": {
///                     "scheme": "cenc",
///                 },
///             },
///             {
///                 "id": "cbcs",
///                 "secret_manager_key_source": {
///                     "secret_version": encryption_key_secret_version.name,
///                 },
///                 "drm_systems": {
///                     "widevine": {},
///                 },
///                 "mpeg_cenc": {
///                     "scheme": "cbcs",
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "ts_aes128",
///                 "container": "ts",
///                 "elementary_streams": [
///                     "es_video",
///                     "es_audio",
///                 ],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "aes-128",
///             },
///             {
///                 "key": "fmp4_cenc_video",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_video"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cenc",
///             },
///             {
///                 "key": "fmp4_cenc_audio",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_audio"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cenc",
///             },
///             {
///                 "key": "fmp4_cbcs_video",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_video"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cbcs",
///             },
///             {
///                 "key": "fmp4_cbcs_audio",
///                 "container": "fmp4",
///                 "elementary_streams": ["es_audio"],
///                 "segment_settings": {
///                     "segment_duration": "6s",
///                 },
///                 "encryption_id": "cbcs",
///             },
///         ],
///         "manifests": [
///             {
///                 "file_name": "manifest_aes128.m3u8",
///                 "type": "HLS",
///                 "mux_streams": ["ts_aes128"],
///             },
///             {
///                 "file_name": "manifest_cenc.mpd",
///                 "type": "DASH",
///                 "mux_streams": [
///                     "fmp4_cenc_video",
///                     "fmp4_cenc_audio",
///                 ],
///             },
///             {
///                 "file_name": "manifest_cbcs.mpd",
///                 "type": "DASH",
///                 "mux_streams": [
///                     "fmp4_cbcs_video",
///                     "fmp4_cbcs_audio",
///                 ],
///             },
///         ],
///     },
///     labels={
///         "label": "key",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var encryptionKey = new Gcp.SecretManager.Secret("encryption_key", new()
///     {
///         SecretId = "transcoder-encryption-key",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var encryptionKeySecretVersion = new Gcp.SecretManager.SecretVersion("encryption_key", new()
///     {
///         Secret = encryptionKey.Name,
///         SecretData = "4A67F2C1B8E93A4F6D3E7890A1BC23DF",
///     });
///
///     var @default = new Gcp.Transcoder.JobTemplate("default", new()
///     {
///         JobTemplateId = "example-job-template",
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobTemplateConfigArgs
///         {
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "es_video",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             Profile = "main",
///                             HeightPixels = 600,
///                             WidthPixels = 800,
///                             BitrateBps = 1000000,
///                             FrameRate = 60,
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "es_audio",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         ChannelCount = 2,
///                         BitrateBps = 160000,
///                     },
///                 },
///             },
///             Encryptions = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionArgs
///                 {
///                     Id = "aes-128",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionDrmSystemsArgs
///                     {
///                         Clearkey = null,
///                     },
///                     Aes128 = null,
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionArgs
///                 {
///                     Id = "cenc",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionDrmSystemsArgs
///                     {
///                         Widevine = null,
///                     },
///                     MpegCenc = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionMpegCencArgs
///                     {
///                         Scheme = "cenc",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionArgs
///                 {
///                     Id = "cbcs",
///                     SecretManagerKeySource = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionSecretManagerKeySourceArgs
///                     {
///                         SecretVersion = encryptionKeySecretVersion.Name,
///                     },
///                     DrmSystems = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionDrmSystemsArgs
///                     {
///                         Widevine = null,
///                     },
///                     MpegCenc = new Gcp.Transcoder.Inputs.JobTemplateConfigEncryptionMpegCencArgs
///                     {
///                         Scheme = "cbcs",
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "ts_aes128",
///                     Container = "ts",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "aes-128",
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cenc_video",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cenc",
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cenc_audio",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cenc",
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cbcs_video",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_video",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cbcs",
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "fmp4_cbcs_audio",
///                     Container = "fmp4",
///                     ElementaryStreams = new[]
///                     {
///                         "es_audio",
///                     },
///                     SegmentSettings = new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamSegmentSettingsArgs
///                     {
///                         SegmentDuration = "6s",
///                     },
///                     EncryptionId = "cbcs",
///                 },
///             },
///             Manifests = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigManifestArgs
///                 {
///                     FileName = "manifest_aes128.m3u8",
///                     Type = "HLS",
///                     MuxStreams = new[]
///                     {
///                         "ts_aes128",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigManifestArgs
///                 {
///                     FileName = "manifest_cenc.mpd",
///                     Type = "DASH",
///                     MuxStreams = new[]
///                     {
///                         "fmp4_cenc_video",
///                         "fmp4_cenc_audio",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigManifestArgs
///                 {
///                     FileName = "manifest_cbcs.mpd",
///                     Type = "DASH",
///                     MuxStreams = new[]
///                     {
///                         "fmp4_cbcs_video",
///                         "fmp4_cbcs_audio",
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		encryptionKey, err := secretmanager.NewSecret(ctx, "encryption_key", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("transcoder-encryption-key"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		encryptionKeySecretVersion, err := secretmanager.NewSecretVersion(ctx, "encryption_key", &secretmanager.SecretVersionArgs{
/// 			Secret:     encryptionKey.Name,
/// 			SecretData: pulumi.String("4A67F2C1B8E93A4F6D3E7890A1BC23DF"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJobTemplate(ctx, "default", &transcoder.JobTemplateArgs{
/// 			JobTemplateId: pulumi.String("example-job-template"),
/// 			Location:      pulumi.String("us-central1"),
/// 			Config: &transcoder.JobTemplateConfigArgs{
/// 				ElementaryStreams: transcoder.JobTemplateConfigElementaryStreamArray{
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("es_video"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								Profile:      pulumi.String("main"),
/// 								HeightPixels: pulumi.Int(600),
/// 								WidthPixels:  pulumi.Int(800),
/// 								BitrateBps:   pulumi.Int(1000000),
/// 								FrameRate:    pulumi.Int(60),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("es_audio"),
/// 						AudioStream: &transcoder.JobTemplateConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							ChannelCount: pulumi.Int(2),
/// 							BitrateBps:   pulumi.Int(160000),
/// 						},
/// 					},
/// 				},
/// 				Encryptions: transcoder.JobTemplateConfigEncryptionArray{
/// 					&transcoder.JobTemplateConfigEncryptionArgs{
/// 						Id: pulumi.String("aes-128"),
/// 						SecretManagerKeySource: &transcoder.JobTemplateConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobTemplateConfigEncryptionDrmSystemsArgs{
/// 							Clearkey: &transcoder.JobTemplateConfigEncryptionDrmSystemsClearkeyArgs{},
/// 						},
/// 						Aes128: &transcoder.JobTemplateConfigEncryptionAes128Args{},
/// 					},
/// 					&transcoder.JobTemplateConfigEncryptionArgs{
/// 						Id: pulumi.String("cenc"),
/// 						SecretManagerKeySource: &transcoder.JobTemplateConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobTemplateConfigEncryptionDrmSystemsArgs{
/// 							Widevine: &transcoder.JobTemplateConfigEncryptionDrmSystemsWidevineArgs{},
/// 						},
/// 						MpegCenc: &transcoder.JobTemplateConfigEncryptionMpegCencArgs{
/// 							Scheme: pulumi.String("cenc"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigEncryptionArgs{
/// 						Id: pulumi.String("cbcs"),
/// 						SecretManagerKeySource: &transcoder.JobTemplateConfigEncryptionSecretManagerKeySourceArgs{
/// 							SecretVersion: encryptionKeySecretVersion.Name,
/// 						},
/// 						DrmSystems: &transcoder.JobTemplateConfigEncryptionDrmSystemsArgs{
/// 							Widevine: &transcoder.JobTemplateConfigEncryptionDrmSystemsWidevineArgs{},
/// 						},
/// 						MpegCenc: &transcoder.JobTemplateConfigEncryptionMpegCencArgs{
/// 							Scheme: pulumi.String("cbcs"),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobTemplateConfigMuxStreamArray{
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("ts_aes128"),
/// 						Container: pulumi.String("ts"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobTemplateConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("aes-128"),
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cenc_video"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 						},
/// 						SegmentSettings: &transcoder.JobTemplateConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cenc"),
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cenc_audio"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobTemplateConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cenc"),
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cbcs_video"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_video"),
/// 						},
/// 						SegmentSettings: &transcoder.JobTemplateConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cbcs"),
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("fmp4_cbcs_audio"),
/// 						Container: pulumi.String("fmp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("es_audio"),
/// 						},
/// 						SegmentSettings: &transcoder.JobTemplateConfigMuxStreamSegmentSettingsArgs{
/// 							SegmentDuration: pulumi.String("6s"),
/// 						},
/// 						EncryptionId: pulumi.String("cbcs"),
/// 					},
/// 				},
/// 				Manifests: transcoder.JobTemplateConfigManifestArray{
/// 					&transcoder.JobTemplateConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_aes128.m3u8"),
/// 						Type:     pulumi.String("HLS"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("ts_aes128"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_cenc.mpd"),
/// 						Type:     pulumi.String("DASH"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("fmp4_cenc_video"),
/// 							pulumi.String("fmp4_cenc_audio"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigManifestArgs{
/// 						FileName: pulumi.String("manifest_cbcs.mpd"),
/// 						Type:     pulumi.String("DASH"),
/// 						MuxStreams: pulumi.StringArray{
/// 							pulumi.String("fmp4_cbcs_video"),
/// 							pulumi.String("fmp4_cbcs_audio"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.transcoder.JobTemplate;
/// import com.pulumi.gcp.transcoder.JobTemplateArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var encryptionKey = new Secret("encryptionKey", SecretArgs.builder()
///             .secretId("transcoder-encryption-key")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var encryptionKeySecretVersion = new SecretVersion("encryptionKeySecretVersion", SecretVersionArgs.builder()
///             .secret(encryptionKey.name())
///             .secretData("4A67F2C1B8E93A4F6D3E7890A1BC23DF")
///             .build());
///
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateId("example-job-template")
///             .location("us-central1")
///             .config(JobTemplateConfigArgs.builder()
///                 .elementaryStreams(
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("es_video")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .profile("main")
///                                 .heightPixels(600)
///                                 .widthPixels(800)
///                                 .bitrateBps(1000000)
///                                 .frameRate(60)
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("es_audio")
///                         .audioStream(JobTemplateConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .channelCount(2)
///                             .bitrateBps(160000)
///                             .build())
///                         .build())
///                 .encryptions(
///                     JobTemplateConfigEncryptionArgs.builder()
///                         .id("aes-128")
///                         .secretManagerKeySource(JobTemplateConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobTemplateConfigEncryptionDrmSystemsArgs.builder()
///                             .clearkey(JobTemplateConfigEncryptionDrmSystemsClearkeyArgs.builder()
///                                 .build())
///                             .build())
///                         .aes128(JobTemplateConfigEncryptionAes128Args.builder()
///                             .build())
///                         .build(),
///                     JobTemplateConfigEncryptionArgs.builder()
///                         .id("cenc")
///                         .secretManagerKeySource(JobTemplateConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobTemplateConfigEncryptionDrmSystemsArgs.builder()
///                             .widevine(JobTemplateConfigEncryptionDrmSystemsWidevineArgs.builder()
///                                 .build())
///                             .build())
///                         .mpegCenc(JobTemplateConfigEncryptionMpegCencArgs.builder()
///                             .scheme("cenc")
///                             .build())
///                         .build(),
///                     JobTemplateConfigEncryptionArgs.builder()
///                         .id("cbcs")
///                         .secretManagerKeySource(JobTemplateConfigEncryptionSecretManagerKeySourceArgs.builder()
///                             .secretVersion(encryptionKeySecretVersion.name())
///                             .build())
///                         .drmSystems(JobTemplateConfigEncryptionDrmSystemsArgs.builder()
///                             .widevine(JobTemplateConfigEncryptionDrmSystemsWidevineArgs.builder()
///                                 .build())
///                             .build())
///                         .mpegCenc(JobTemplateConfigEncryptionMpegCencArgs.builder()
///                             .scheme("cbcs")
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("ts_aes128")
///                         .container("ts")
///                         .elementaryStreams(
///                             "es_video",
///                             "es_audio")
///                         .segmentSettings(JobTemplateConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("aes-128")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("fmp4_cenc_video")
///                         .container("fmp4")
///                         .elementaryStreams("es_video")
///                         .segmentSettings(JobTemplateConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cenc")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("fmp4_cenc_audio")
///                         .container("fmp4")
///                         .elementaryStreams("es_audio")
///                         .segmentSettings(JobTemplateConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cenc")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("fmp4_cbcs_video")
///                         .container("fmp4")
///                         .elementaryStreams("es_video")
///                         .segmentSettings(JobTemplateConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cbcs")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("fmp4_cbcs_audio")
///                         .container("fmp4")
///                         .elementaryStreams("es_audio")
///                         .segmentSettings(JobTemplateConfigMuxStreamSegmentSettingsArgs.builder()
///                             .segmentDuration("6s")
///                             .build())
///                         .encryptionId("cbcs")
///                         .build())
///                 .manifests(
///                     JobTemplateConfigManifestArgs.builder()
///                         .fileName("manifest_aes128.m3u8")
///                         .type("HLS")
///                         .muxStreams("ts_aes128")
///                         .build(),
///                     JobTemplateConfigManifestArgs.builder()
///                         .fileName("manifest_cenc.mpd")
///                         .type("DASH")
///                         .muxStreams(
///                             "fmp4_cenc_video",
///                             "fmp4_cenc_audio")
///                         .build(),
///                     JobTemplateConfigManifestArgs.builder()
///                         .fileName("manifest_cbcs.mpd")
///                         .type("DASH")
///                         .muxStreams(
///                             "fmp4_cbcs_video",
///                             "fmp4_cbcs_audio")
///                         .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   encryptionKey:
///     type: gcp:secretmanager:Secret
///     name: encryption_key
///     properties:
///       secretId: transcoder-encryption-key
///       replication:
///         auto: {}
///   encryptionKeySecretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: encryption_key
///     properties:
///       secret: ${encryptionKey.name}
///       secretData: 4A67F2C1B8E93A4F6D3E7890A1BC23DF
///   default:
///     type: gcp:transcoder:JobTemplate
///     properties:
///       jobTemplateId: example-job-template
///       location: us-central1
///       config:
///         elementaryStreams:
///           - key: es_video
///             videoStream:
///               h264:
///                 profile: main
///                 heightPixels: 600
///                 widthPixels: 800
///                 bitrateBps: 1e+06
///                 frameRate: 60
///           - key: es_audio
///             audioStream:
///               codec: aac
///               channelCount: 2
///               bitrateBps: 160000
///         encryptions:
///           - id: aes-128
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               clearkey: {}
///             aes128: {}
///           - id: cenc
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               widevine: {}
///             mpegCenc:
///               scheme: cenc
///           - id: cbcs
///             secretManagerKeySource:
///               secretVersion: ${encryptionKeySecretVersion.name}
///             drmSystems:
///               widevine: {}
///             mpegCenc:
///               scheme: cbcs
///         muxStreams:
///           - key: ts_aes128
///             container: ts
///             elementaryStreams:
///               - es_video
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: aes-128
///           - key: fmp4_cenc_video
///             container: fmp4
///             elementaryStreams:
///               - es_video
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cenc
///           - key: fmp4_cenc_audio
///             container: fmp4
///             elementaryStreams:
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cenc
///           - key: fmp4_cbcs_video
///             container: fmp4
///             elementaryStreams:
///               - es_video
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cbcs
///           - key: fmp4_cbcs_audio
///             container: fmp4
///             elementaryStreams:
///               - es_audio
///             segmentSettings:
///               segmentDuration: 6s
///             encryptionId: cbcs
///         manifests:
///           - fileName: manifest_aes128.m3u8
///             type: HLS
///             muxStreams:
///               - ts_aes128
///           - fileName: manifest_cenc.mpd
///             type: DASH
///             muxStreams:
///               - fmp4_cenc_video
///               - fmp4_cenc_audio
///           - fileName: manifest_cbcs.mpd
///             type: DASH
///             muxStreams:
///               - fmp4_cbcs_video
///               - fmp4_cbcs_audio
///       labels:
///         label: key
/// ```
///
/// ### Transcoder Job Template Pubsub
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const transcoderNotifications = new gcp.pubsub.Topic("transcoder_notifications", {name: "transcoder-notifications"});
/// const _default = new gcp.transcoder.JobTemplate("default", {
///     jobTemplateId: "example-job-template",
///     location: "us-central1",
///     config: {
///         inputs: [{
///             key: "input0",
///             uri: "gs://example/example.mp4",
///         }],
///         output: {
///             uri: "gs://example/outputs/",
///         },
///         editLists: [{
///             key: "atom0",
///             inputs: ["input0"],
///             startTimeOffset: "0s",
///         }],
///         adBreaks: [{
///             startTimeOffset: "3.500s",
///         }],
///         elementaryStreams: [
///             {
///                 key: "video-stream0",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 640,
///                         heightPixels: 360,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 550000,
///                         vbvFullnessBits: 495000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "video-stream1",
///                 videoStream: {
///                     h264: {
///                         widthPixels: 1280,
///                         heightPixels: 720,
///                         bitrateBps: 550000,
///                         frameRate: 60,
///                         pixelFormat: "yuv420p",
///                         rateControlMode: "vbr",
///                         crfLevel: 21,
///                         gopDuration: "3s",
///                         vbvSizeBits: 2500000,
///                         vbvFullnessBits: 2250000,
///                         entropyCoder: "cabac",
///                         profile: "high",
///                         preset: "veryfast",
///                     },
///                 },
///             },
///             {
///                 key: "audio-stream0",
///                 audioStream: {
///                     codec: "aac",
///                     bitrateBps: 64000,
///                     channelCount: 2,
///                     channelLayouts: [
///                         "fl",
///                         "fr",
///                     ],
///                     sampleRateHertz: 48000,
///                 },
///             },
///         ],
///         muxStreams: [
///             {
///                 key: "sd",
///                 fileName: "sd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 key: "hd",
///                 fileName: "hd.mp4",
///                 container: "mp4",
///                 elementaryStreams: [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         pubsubDestination: {
///             topic: transcoderNotifications.id,
///         },
///     },
///     labels: {
///         label: "key",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// transcoder_notifications = gcp.pubsub.Topic("transcoder_notifications", name="transcoder-notifications")
/// default = gcp.transcoder.JobTemplate("default",
///     job_template_id="example-job-template",
///     location="us-central1",
///     config={
///         "inputs": [{
///             "key": "input0",
///             "uri": "gs://example/example.mp4",
///         }],
///         "output": {
///             "uri": "gs://example/outputs/",
///         },
///         "edit_lists": [{
///             "key": "atom0",
///             "inputs": ["input0"],
///             "start_time_offset": "0s",
///         }],
///         "ad_breaks": [{
///             "start_time_offset": "3.500s",
///         }],
///         "elementary_streams": [
///             {
///                 "key": "video-stream0",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 640,
///                         "height_pixels": 360,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 550000,
///                         "vbv_fullness_bits": 495000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "video-stream1",
///                 "video_stream": {
///                     "h264": {
///                         "width_pixels": 1280,
///                         "height_pixels": 720,
///                         "bitrate_bps": 550000,
///                         "frame_rate": 60,
///                         "pixel_format": "yuv420p",
///                         "rate_control_mode": "vbr",
///                         "crf_level": 21,
///                         "gop_duration": "3s",
///                         "vbv_size_bits": 2500000,
///                         "vbv_fullness_bits": 2250000,
///                         "entropy_coder": "cabac",
///                         "profile": "high",
///                         "preset": "veryfast",
///                     },
///                 },
///             },
///             {
///                 "key": "audio-stream0",
///                 "audio_stream": {
///                     "codec": "aac",
///                     "bitrate_bps": 64000,
///                     "channel_count": 2,
///                     "channel_layouts": [
///                         "fl",
///                         "fr",
///                     ],
///                     "sample_rate_hertz": 48000,
///                 },
///             },
///         ],
///         "mux_streams": [
///             {
///                 "key": "sd",
///                 "file_name": "sd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream0",
///                     "audio-stream0",
///                 ],
///             },
///             {
///                 "key": "hd",
///                 "file_name": "hd.mp4",
///                 "container": "mp4",
///                 "elementary_streams": [
///                     "video-stream1",
///                     "audio-stream0",
///                 ],
///             },
///         ],
///         "pubsub_destination": {
///             "topic": transcoder_notifications.id,
///         },
///     },
///     labels={
///         "label": "key",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var transcoderNotifications = new Gcp.PubSub.Topic("transcoder_notifications", new()
///     {
///         Name = "transcoder-notifications",
///     });
///
///     var @default = new Gcp.Transcoder.JobTemplate("default", new()
///     {
///         JobTemplateId = "example-job-template",
///         Location = "us-central1",
///         Config = new Gcp.Transcoder.Inputs.JobTemplateConfigArgs
///         {
///             Inputs = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigInputArgs
///                 {
///                     Key = "input0",
///                     Uri = "gs://example/example.mp4",
///                 },
///             },
///             Output = new Gcp.Transcoder.Inputs.JobTemplateConfigOutputArgs
///             {
///                 Uri = "gs://example/outputs/",
///             },
///             EditLists = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigEditListArgs
///                 {
///                     Key = "atom0",
///                     Inputs = new[]
///                     {
///                         "input0",
///                     },
///                     StartTimeOffset = "0s",
///                 },
///             },
///             AdBreaks = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigAdBreakArgs
///                 {
///                     StartTimeOffset = "3.500s",
///                 },
///             },
///             ElementaryStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream0",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 640,
///                             HeightPixels = 360,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 550000,
///                             VbvFullnessBits = 495000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "video-stream1",
///                     VideoStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamArgs
///                     {
///                         H264 = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamVideoStreamH264Args
///                         {
///                             WidthPixels = 1280,
///                             HeightPixels = 720,
///                             BitrateBps = 550000,
///                             FrameRate = 60,
///                             PixelFormat = "yuv420p",
///                             RateControlMode = "vbr",
///                             CrfLevel = 21,
///                             GopDuration = "3s",
///                             VbvSizeBits = 2500000,
///                             VbvFullnessBits = 2250000,
///                             EntropyCoder = "cabac",
///                             Profile = "high",
///                             Preset = "veryfast",
///                         },
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamArgs
///                 {
///                     Key = "audio-stream0",
///                     AudioStream = new Gcp.Transcoder.Inputs.JobTemplateConfigElementaryStreamAudioStreamArgs
///                     {
///                         Codec = "aac",
///                         BitrateBps = 64000,
///                         ChannelCount = 2,
///                         ChannelLayouts = new[]
///                         {
///                             "fl",
///                             "fr",
///                         },
///                         SampleRateHertz = 48000,
///                     },
///                 },
///             },
///             MuxStreams = new[]
///             {
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "sd",
///                     FileName = "sd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream0",
///                         "audio-stream0",
///                     },
///                 },
///                 new Gcp.Transcoder.Inputs.JobTemplateConfigMuxStreamArgs
///                 {
///                     Key = "hd",
///                     FileName = "hd.mp4",
///                     Container = "mp4",
///                     ElementaryStreams = new[]
///                     {
///                         "video-stream1",
///                         "audio-stream0",
///                     },
///                 },
///             },
///             PubsubDestination = new Gcp.Transcoder.Inputs.JobTemplateConfigPubsubDestinationArgs
///             {
///                 Topic = transcoderNotifications.Id,
///             },
///         },
///         Labels =
///         {
///             { "label", "key" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/transcoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		transcoderNotifications, err := pubsub.NewTopic(ctx, "transcoder_notifications", &pubsub.TopicArgs{
/// 			Name: pulumi.String("transcoder-notifications"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcoder.NewJobTemplate(ctx, "default", &transcoder.JobTemplateArgs{
/// 			JobTemplateId: pulumi.String("example-job-template"),
/// 			Location:      pulumi.String("us-central1"),
/// 			Config: &transcoder.JobTemplateConfigArgs{
/// 				Inputs: transcoder.JobTemplateConfigInputTypeArray{
/// 					&transcoder.JobTemplateConfigInputTypeArgs{
/// 						Key: pulumi.String("input0"),
/// 						Uri: pulumi.String("gs://example/example.mp4"),
/// 					},
/// 				},
/// 				Output: &transcoder.JobTemplateConfigOutputTypeArgs{
/// 					Uri: pulumi.String("gs://example/outputs/"),
/// 				},
/// 				EditLists: transcoder.JobTemplateConfigEditListArray{
/// 					&transcoder.JobTemplateConfigEditListArgs{
/// 						Key: pulumi.String("atom0"),
/// 						Inputs: pulumi.StringArray{
/// 							pulumi.String("input0"),
/// 						},
/// 						StartTimeOffset: pulumi.String("0s"),
/// 					},
/// 				},
/// 				AdBreaks: transcoder.JobTemplateConfigAdBreakArray{
/// 					&transcoder.JobTemplateConfigAdBreakArgs{
/// 						StartTimeOffset: pulumi.String("3.500s"),
/// 					},
/// 				},
/// 				ElementaryStreams: transcoder.JobTemplateConfigElementaryStreamArray{
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream0"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(640),
/// 								HeightPixels:    pulumi.Int(360),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(550000),
/// 								VbvFullnessBits: pulumi.Int(495000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("video-stream1"),
/// 						VideoStream: &transcoder.JobTemplateConfigElementaryStreamVideoStreamArgs{
/// 							H264: &transcoder.JobTemplateConfigElementaryStreamVideoStreamH264Args{
/// 								WidthPixels:     pulumi.Int(1280),
/// 								HeightPixels:    pulumi.Int(720),
/// 								BitrateBps:      pulumi.Int(550000),
/// 								FrameRate:       pulumi.Int(60),
/// 								PixelFormat:     pulumi.String("yuv420p"),
/// 								RateControlMode: pulumi.String("vbr"),
/// 								CrfLevel:        pulumi.Int(21),
/// 								GopDuration:     pulumi.String("3s"),
/// 								VbvSizeBits:     pulumi.Int(2500000),
/// 								VbvFullnessBits: pulumi.Int(2250000),
/// 								EntropyCoder:    pulumi.String("cabac"),
/// 								Profile:         pulumi.String("high"),
/// 								Preset:          pulumi.String("veryfast"),
/// 							},
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigElementaryStreamArgs{
/// 						Key: pulumi.String("audio-stream0"),
/// 						AudioStream: &transcoder.JobTemplateConfigElementaryStreamAudioStreamArgs{
/// 							Codec:        pulumi.String("aac"),
/// 							BitrateBps:   pulumi.Int(64000),
/// 							ChannelCount: pulumi.Int(2),
/// 							ChannelLayouts: pulumi.StringArray{
/// 								pulumi.String("fl"),
/// 								pulumi.String("fr"),
/// 							},
/// 							SampleRateHertz: pulumi.Int(48000),
/// 						},
/// 					},
/// 				},
/// 				MuxStreams: transcoder.JobTemplateConfigMuxStreamArray{
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("sd"),
/// 						FileName:  pulumi.String("sd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream0"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 					&transcoder.JobTemplateConfigMuxStreamArgs{
/// 						Key:       pulumi.String("hd"),
/// 						FileName:  pulumi.String("hd.mp4"),
/// 						Container: pulumi.String("mp4"),
/// 						ElementaryStreams: pulumi.StringArray{
/// 							pulumi.String("video-stream1"),
/// 							pulumi.String("audio-stream0"),
/// 						},
/// 					},
/// 				},
/// 				PubsubDestination: &transcoder.JobTemplateConfigPubsubDestinationArgs{
/// 					Topic: transcoderNotifications.ID(),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.transcoder.JobTemplate;
/// import com.pulumi.gcp.transcoder.JobTemplateArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigOutputArgs;
/// import com.pulumi.gcp.transcoder.inputs.JobTemplateConfigPubsubDestinationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var transcoderNotifications = new Topic("transcoderNotifications", TopicArgs.builder()
///             .name("transcoder-notifications")
///             .build());
///
///         var default_ = new JobTemplate("default", JobTemplateArgs.builder()
///             .jobTemplateId("example-job-template")
///             .location("us-central1")
///             .config(JobTemplateConfigArgs.builder()
///                 .inputs(JobTemplateConfigInputArgs.builder()
///                     .key("input0")
///                     .uri("gs://example/example.mp4")
///                     .build())
///                 .output(JobTemplateConfigOutputArgs.builder()
///                     .uri("gs://example/outputs/")
///                     .build())
///                 .editLists(JobTemplateConfigEditListArgs.builder()
///                     .key("atom0")
///                     .inputs("input0")
///                     .startTimeOffset("0s")
///                     .build())
///                 .adBreaks(JobTemplateConfigAdBreakArgs.builder()
///                     .startTimeOffset("3.500s")
///                     .build())
///                 .elementaryStreams(
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream0")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(640)
///                                 .heightPixels(360)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(550000)
///                                 .vbvFullnessBits(495000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("video-stream1")
///                         .videoStream(JobTemplateConfigElementaryStreamVideoStreamArgs.builder()
///                             .h264(JobTemplateConfigElementaryStreamVideoStreamH264Args.builder()
///                                 .widthPixels(1280)
///                                 .heightPixels(720)
///                                 .bitrateBps(550000)
///                                 .frameRate(60)
///                                 .pixelFormat("yuv420p")
///                                 .rateControlMode("vbr")
///                                 .crfLevel(21)
///                                 .gopDuration("3s")
///                                 .vbvSizeBits(2500000)
///                                 .vbvFullnessBits(2250000)
///                                 .entropyCoder("cabac")
///                                 .profile("high")
///                                 .preset("veryfast")
///                                 .build())
///                             .build())
///                         .build(),
///                     JobTemplateConfigElementaryStreamArgs.builder()
///                         .key("audio-stream0")
///                         .audioStream(JobTemplateConfigElementaryStreamAudioStreamArgs.builder()
///                             .codec("aac")
///                             .bitrateBps(64000)
///                             .channelCount(2)
///                             .channelLayouts(
///                                 "fl",
///                                 "fr")
///                             .sampleRateHertz(48000)
///                             .build())
///                         .build())
///                 .muxStreams(
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("sd")
///                         .fileName("sd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream0",
///                             "audio-stream0")
///                         .build(),
///                     JobTemplateConfigMuxStreamArgs.builder()
///                         .key("hd")
///                         .fileName("hd.mp4")
///                         .container("mp4")
///                         .elementaryStreams(
///                             "video-stream1",
///                             "audio-stream0")
///                         .build())
///                 .pubsubDestination(JobTemplateConfigPubsubDestinationArgs.builder()
///                     .topic(transcoderNotifications.id())
///                     .build())
///                 .build())
///             .labels(Map.of("label", "key"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   transcoderNotifications:
///     type: gcp:pubsub:Topic
///     name: transcoder_notifications
///     properties:
///       name: transcoder-notifications
///   default:
///     type: gcp:transcoder:JobTemplate
///     properties:
///       jobTemplateId: example-job-template
///       location: us-central1
///       config:
///         inputs:
///           - key: input0
///             uri: gs://example/example.mp4
///         output:
///           uri: gs://example/outputs/
///         editLists:
///           - key: atom0
///             inputs:
///               - input0
///             startTimeOffset: 0s
///         adBreaks:
///           - startTimeOffset: 3.500s
///         elementaryStreams:
///           - key: video-stream0
///             videoStream:
///               h264:
///                 widthPixels: 640
///                 heightPixels: 360
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 550000
///                 vbvFullnessBits: 495000
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: video-stream1
///             videoStream:
///               h264:
///                 widthPixels: 1280
///                 heightPixels: 720
///                 bitrateBps: 550000
///                 frameRate: 60
///                 pixelFormat: yuv420p
///                 rateControlMode: vbr
///                 crfLevel: 21
///                 gopDuration: 3s
///                 vbvSizeBits: 2.5e+06
///                 vbvFullnessBits: 2.25e+06
///                 entropyCoder: cabac
///                 profile: high
///                 preset: veryfast
///           - key: audio-stream0
///             audioStream:
///               codec: aac
///               bitrateBps: 64000
///               channelCount: 2
///               channelLayouts:
///                 - fl
///                 - fr
///               sampleRateHertz: 48000
///         muxStreams:
///           - key: sd
///             fileName: sd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream0
///               - audio-stream0
///           - key: hd
///             fileName: hd.mp4
///             container: mp4
///             elementaryStreams:
///               - video-stream1
///               - audio-stream0
///         pubsubDestination:
///           topic: ${transcoderNotifications.id}
///       labels:
///         label: key
/// ```
///
///
/// ## Import
///
/// JobTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/jobTemplates/{{job_template_id}}`
///
/// * `{{project}}/{{location}}/{{job_template_id}}`
///
/// * `{{location}}/{{job_template_id}}`
///
/// When using the `pulumi import` command, JobTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default projects/{{project}}/locations/{{location}}/jobTemplates/{{job_template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default {{project}}/{{location}}/{{job_template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:transcoder/jobTemplate:JobTemplate default {{location}}/{{job_template_id}}
/// ```
class JobTemplate extends pulumi.CustomResource {
  /// The configuration for this template.
  /// Structure is documented below.
  late final pulumi.Output<JobTemplateConfig> config;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// ID to use for the Transcoding job template.
  late final pulumi.Output<String> jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the transcoding job template resource.
  late final pulumi.Output<String> location;
  /// The resource name of the job template.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [JobTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTemplate]. {@macro pulumi_transcoder_job_template_job_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:transcoder/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<JobTemplateConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    jobTemplateId = registerOutput<String>('jobTemplateId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }

  /// Gets an existing [JobTemplate] resource's state with the given [name] and [id].
  static JobTemplate get(
    String name,
    pulumi.Input<String> id, {
    JobTemplateState? state,
  }) {
    return JobTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  JobTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:transcoder/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<JobTemplateConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplateConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    jobTemplateId = registerOutput<String>('jobTemplateId');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
