@extends('layouts.app')

@section('content')
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <center>
			<h1>You are logged in!</h1>
		     <br>
		    <button>AddRecord</button>
		    <button>DeleteRecord</button>
		    </center>

@endsection
