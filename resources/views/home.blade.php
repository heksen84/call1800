@extends('layouts.app')

@section('content')
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <br>
                    <center>
			<h1>You are logged in!</h1>
		    <br>
		    <button>Add number</button>
		    <button>Delete number</button>
		    </center>

@endsection
