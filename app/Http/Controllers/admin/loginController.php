<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
class loginController extends Controller
{
	public function getlogin()
    {
    	return view('admin.admin_login');
    }
    public function postlogin(Request $rq)
    {
    	$admin_pass=$rq->admin_pass;
    	$admin_name=$rq->admin_name;
    	
    	$result= DB::table('admin')->where('admin_name',$admin_name)->where('admin_pass',$admin_pass)->first();
    	if($result )
    	{
    		$rq->session()->put(['admin_name'=>$result->admin_name, 'admin_id'=>$result->admin_id ]);
    		return redirect('admin/dashboard');
    	}
    	else
    	{
    		$rq->session()->flash('error','Tai khoan hoac mat khau khong dung');
    		return redirect('admin/login');

    	}
    }
    
    public function dashboard()
    {
        return view('admin.dashboard');
    }
}
