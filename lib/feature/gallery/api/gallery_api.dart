import 'package:dio/dio.dart';

import '../model/photos_response.dart';
import 'gallery_api_path.dart';
import 'gallery_api_query.dart';

part 'gallery_api.g.dart';

class GalleryApi {
  final Dio _dio;

  GalleryApi(Dio dio) : _dio = dio;

  Future<PhotosResponse> getPhotos({
    required String groupId,
    int page = 1,
    int perPage = 20,
  }) async {
    final response = await _dio.get<Map<String, Object?>>(
      GalleryApiPath.rest,
      queryParameters: {
        GalleryApiQuery.groupId: groupId,
        GalleryApiQuery.page: page,
        GalleryApiQuery.perPage: perPage,
        GalleryApiQuery.method: 'flickr.groups.pools.getPhotos',
      },
    );

    return PhotosResponse.fromJson(response.data!);
  }
}
