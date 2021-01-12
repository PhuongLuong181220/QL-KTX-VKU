@extends('admin_layout')
@section('admin_content')
    <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Danh sách
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-5 m-b-xs">
                      
      </div>
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
        <div class="input-group" >
          <form action="{{URL::to('all-student/search-student')}}" method="post" accept-charset="utf-8">
            {{ csrf_field() }}
            <div class="tim" style="display:flex; ">
              <button class="btn btn-sm btn-default" type="submit" >Tìm sinh viên</button>
              <input type="text" name="keyworld" class="input-sm form-control" placeholder="Search">
            
            </div>
            
          </form>
        </div>
      </div>
    </div>
    <div class="table-responsive">
    <?php
          $message = Session::get('message');
          if($message){
              echo '<span class="text-alert">'.$message.'</span>';
              Session::put('message',null);
          }
          ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th style="width:20px;">
              <label class="i-checks m-b-none">
                <input type="checkbox"><i></i>
              </label>
            </th>
            <th>STT</th>
            <th>MSV</th>
            <th>Họ tên</th>
            <th>Lớp</th>
            <th>Trường</th>
            <th>Ngày sinh</th>
            <th>Số điện thoại</th>
            <th>Phòng</th>
            <!-- <th>Biển số xe máy</th> -->
            <th>Địa chỉ</th>
          </tr>
        </thead>
        <tbody>
          @foreach($all_student as $key => $student)
          <tr>
            <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
            <td>{{$student->st_id}}</td>
            <td><a href="{{URL::to('/all-student/'.$student->st_id)}}" title="">{{ $student->msv }}</a></td>

            <td><a href="{{URL::to('/all-student/'.$student->st_id)}}" title="">{{ $student->st_name }}</a></td>
            
            <td>{{ $student->st_class }}</td>
            <td>{{ $student->st_school }}</td>
            <td>{{ $student->st_birthday }}</td>
            <td>{{$student->st_phone}}</td> 
            <td>{{$student->room_name}}</td> 
            <!-- <td>{{$student->st_bike}}</td> -->
            <td>{{$student->st_address}}</td>
            </span></td>
           
            <td>
              <a href="{{URL::to('/edit-student/'.$student->st_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active"></i></a>
              <a onclick="return confirm('Bạn có chắc là muốn xóa danh mục này ko?')" href="{{URL::to('/delete-student/'.$student->st_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i>
              </a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        
        <div class="col-sm-5 text-center">
           
        </div>
        <div class="col-sm-7 text-right text-center-xs">                
          <ul class="pagination pagination-sm m-t-none m-b-none">
            {{ $all_student->links() }}
          </ul>
        </div>
      </div>
    </footer>
  </div>
</div>
@endsection