@extends('layouts.app')
@section('title', 'Chaandi Kaar Ecommerce')
@section('main')
    <main>
        <section class="profile__area pt-120 pb-120">
            <div class="container">
                <div class="profile__inner p-relative">
                    <div class="profile__shape">
                        <img class="profile__shape-1" src="{{ asset('user/assets/img/login/laptop.png') }}" alt="">
                        <img class="profile__shape-2" src="{{ asset('user/assets/img/login/man.png') }}" alt="">
                        <img class="profile__shape-3" src="{{ asset('user/assets/img/login/shape-1.png') }}" alt="">
                        <img class="profile__shape-4" src="{{ asset('user/assets/img/login/shape-2.png') }}" alt="">
                        <img class="profile__shape-5" src="{{ asset('user/assets/img/login/shape-3.png') }}" alt="">
                        <img class="profile__shape-6" src="{{ asset('user/assets/img/login/shape-4.png') }}" alt="">
                    </div>
                    <div class="row">
                        <div class="col-xxl-4 col-lg-4">
                            <div class="profile__tab mr-40">
                                <nav>
                                    <div class="nav nav-tabs tp-tab-menu flex-column" id="profile-tab" role="tablist">
                                        <button class="nav-link active" id="nav-profile-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-profile" type="button" role="tab"
                                            aria-controls="nav-profile" aria-selected="false"><span><i
                                                    class="fa-regular fa-user-pen"></i></span>Profile</button>
                                        <button class="nav-link" id="nav-information-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-information" type="button" role="tab"
                                            aria-controls="nav-information" aria-selected="false"><span><i
                                                    class="fa-regular fa-circle-info"></i></span> Information</button>
                                        <span id="marker-vertical" class="tp-tab-line d-none d-sm-inline-block"></span>
                                    </div>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xxl-8 col-lg-8">
                            <div class="profile__tab-content">
                                <div class="tab-content" id="profile-tabContent">
                                    <div class="tab-pane fade show active" id="nav-profile" role="tabpanel"
                                        aria-labelledby="nav-profile-tab">
                                        <div class="profile__main">
                                            <div class="profile__main-top pb-80">
                                                <div class="row align-items-center">
                                                    <div class="col-md-6">
                                                        <div
                                                            class="profile__main-inner d-flex flex-wrap align-items-center">
                                                            <div class="profile__main-thumb">
                                                                <img src="{{ asset('admin/assets/images/users/dummy.jpg') }}"
                                                                    alt="">
                                                            </div>
                                                            <div class="profile__main-content">
                                                                <h4 class="profile__main-title">Welcome
                                                                    {{ Str::ucfirst($user->name) }}!</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="profile__main-logout text-sm-end">
                                                            <a href="{{ url('/logout') }}" class="tp-logout-btn">Logout</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="profile__main-info">
                                                <div class="row gx-3">
                                                    <div class="col-md-3 col-sm-6">
                                                        <div class="profile__main-info-item">
                                                            <div class="profile__main-info-icon">
                                                                <span>
                                                                    <span
                                                                        class="profile-icon-count profile-order">{{ $orders }}</span>
                                                                    <svg viewBox="0 0 512 512">
                                                                        <path
                                                                            d="M472.916,224H448.007a24.534,24.534,0,0,0-23.417-18H398V140.976a6.86,6.86,0,0,0-3.346-6.062L207.077,26.572a6.927,6.927,0,0,0-6.962,0L12.48,134.914A6.981,6.981,0,0,0,9,140.976V357.661a7,7,0,0,0,3.5,6.062L200.154,472.065a7,7,0,0,0,3.5.938,7.361,7.361,0,0,0,3.6-.938L306,415.108v41.174A29.642,29.642,0,0,0,335.891,486H472.916A29.807,29.807,0,0,0,503,456.282v-202.1A30.2,30.2,0,0,0,472.916,224Zm-48.077-4A10.161,10.161,0,0,1,435,230.161v.678A10.161,10.161,0,0,1,424.839,241H384.161A10.161,10.161,0,0,1,374,230.839v-.678A10.161,10.161,0,0,1,384.161,220ZM203.654,40.717l77.974,45.018L107.986,185.987,30.013,140.969ZM197,453.878,23,353.619V153.085L197,253.344Zm6.654-212.658-81.668-47.151L295.628,93.818,377.3,140.969ZM306,254.182V398.943l-95,54.935V253.344L384,153.085V206h.217A24.533,24.533,0,0,0,360.8,224H335.891A30.037,30.037,0,0,0,306,254.182Zm183,202.1A15.793,15.793,0,0,1,472.916,472H335.891A15.628,15.628,0,0,1,320,456.282v-202.1A16.022,16.022,0,0,1,335.891,238h25.182a23.944,23.944,0,0,0,23.144,17H424.59a23.942,23.942,0,0,0,23.143-17h25.183A16.186,16.186,0,0,1,489,254.182Z" />
                                                                        <path
                                                                            d="M343.949,325h7.327a7,7,0,1,0,0-14H351V292h19.307a6.739,6.739,0,0,0,6.655,4.727A7.019,7.019,0,0,0,384,289.743v-4.71A7.093,7.093,0,0,0,376.924,278H343.949A6.985,6.985,0,0,0,337,285.033v32.975A6.95,6.95,0,0,0,343.949,325Z" />
                                                                        <path
                                                                            d="M344,389h33a7,7,0,0,0,7-7V349a7,7,0,0,0-7-7H344a7,7,0,0,0-7,7v33A7,7,0,0,0,344,389Zm7-33h19v19H351Z" />
                                                                        <path
                                                                            d="M351.277,439H351V420h18.929a7.037,7.037,0,0,0,14.071.014v-6.745A7.3,7.3,0,0,0,376.924,406H343.949A7.191,7.191,0,0,0,337,413.269v32.975A6.752,6.752,0,0,0,343.949,453h7.328a7,7,0,1,0,0-14Z" />
                                                                        <path
                                                                            d="M393.041,286.592l-20.5,20.5-6.236-6.237a7,7,0,1,0-9.9,9.9l11.187,11.186a7,7,0,0,0,9.9,0l25.452-25.452a7,7,0,0,0-9.9-9.9Z" />
                                                                        <path
                                                                            d="M393.041,415.841l-20.5,20.5-6.236-6.237a7,7,0,1,0-9.9,9.9l11.187,11.186a7,7,0,0,0,9.9,0l25.452-25.452a7,7,0,0,0-9.9-9.9Z" />
                                                                        <path
                                                                            d="M464.857,295H420.891a7,7,0,0,0,0,14h43.966a7,7,0,0,0,0-14Z" />
                                                                        <path
                                                                            d="M464.857,359H420.891a7,7,0,0,0,0,14h43.966a7,7,0,0,0,0-14Z" />
                                                                        <path
                                                                            d="M464.857,423H420.891a7,7,0,0,0,0,14h43.966a7,7,0,0,0,0-14Z" />
                                                                    </svg>
                                                                </span>
                                                            </div>
                                                            <h4 class="profile__main-info-title">Orders</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-information" role="tabpanel"
                                        aria-labelledby="nav-information-tab">
                                        <div class="profile__info">
                                            <h3 class="profile__info-title">Personal Details</h3>
                                            <div class="profile__info-content">
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-xxl-6 col-md-6">
                                                            <div class="profile__input-box">
                                                                <div class="profile__input">
                                                                    <input type="text" placeholder="Enter your username"
                                                                        value="{{ $user->name }}" id="name">
                                                                    <span>
                                                                        <svg width="17" height="19"
                                                                            viewBox="0 0 17 19" fill="none"
                                                                            xmlns="http://www.w3.org/2000/svg">
                                                                            <path
                                                                                d="M9 9C11.2091 9 13 7.20914 13 5C13 2.79086 11.2091 1 9 1C6.79086 1 5 2.79086 5 5C5 7.20914 6.79086 9 9 9Z"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                            <path
                                                                                d="M15.5 17.6C15.5 14.504 12.3626 12 8.5 12C4.63737 12 1.5 14.504 1.5 17.6"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xxl-6 col-md-6">
                                                            <div class="profile__input-box">
                                                                <div class="profile__input">
                                                                    <input type="email" id="email"
                                                                        value="{{ $user->email }}"
                                                                        placeholder="Enter your email"
                                                                        value="example@mail.com">
                                                                    <span>
                                                                        <svg width="18" height="16"
                                                                            viewBox="0 0 18 16" fill="none"
                                                                            xmlns="http://www.w3.org/2000/svg">
                                                                            <path
                                                                                d="M13 14.6H5C2.6 14.6 1 13.4 1 10.6V5C1 2.2 2.6 1 5 1H13C15.4 1 17 2.2 17 5V10.6C17 13.4 15.4 14.6 13 14.6Z"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-miterlimit="10"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                            <path
                                                                                d="M13 5.3999L10.496 7.3999C9.672 8.0559 8.32 8.0559 7.496 7.3999L5 5.3999"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-miterlimit="10"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-xxl-6 col-md-6">
                                                            <div class="profile__input-box">
                                                                <div class="profile__input">
                                                                    <input type="text" id="contact_no"
                                                                        value="{{ $user->contact_no }}"
                                                                        placeholder="Enter your number"
                                                                        value="0123 456 7889">
                                                                    <span>
                                                                        <svg width="15" height="18"
                                                                            viewBox="0 0 15 18" fill="none"
                                                                            xmlns="http://www.w3.org/2000/svg">
                                                                            <path
                                                                                d="M13.9148 5V13C13.9148 16.2 13.1076 17 9.87892 17H5.03587C1.80717 17 1 16.2 1 13V5C1 1.8 1.80717 1 5.03587 1H9.87892C13.1076 1 13.9148 1.8 13.9148 5Z"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                            <path opacity="0.4"
                                                                                d="M9.08026 3.80054H5.85156"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                            <path opacity="0.4"
                                                                                d="M7.45425 14.6795C8.14522 14.6795 8.70537 14.1243 8.70537 13.4395C8.70537 12.7546 8.14522 12.1995 7.45425 12.1995C6.76327 12.1995 6.20312 12.7546 6.20312 13.4395C6.20312 14.1243 6.76327 14.6795 7.45425 14.6795Z"
                                                                                stroke="currentColor" stroke-width="1.5"
                                                                                stroke-linecap="round"
                                                                                stroke-linejoin="round" />
                                                                        </svg>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-xxl-6 col-md-6">
                                                            <div class="profile__input-box">
                                                                <div class="profile__input">
                                                                    <input type="text" id="password"
                                                                        value="{{ $user->temp_password }}"
                                                                        placeholder="Enter your number">
                                                                    <span>
                                                                        <i class="fa-regular fa-lock"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-xxl-12">
                                                            <div class="profile__btn">
                                                                <button type="submit" id="submit"
                                                                    class="tp-btn">Update
                                                                    Profile</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection
@section('script')
    <script>
        $(document).ready(function() {
            $(document).on("click", "#submit", function(event) {
                event.preventDefault();
                var email = $("#email").val();
                var name = $("#name").val();
                var password = $("#password").val();
                var contact_no = $("#contact_no").val();
                const button = document.getElementById("submit");
                button.innerHTML =
                    "<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Processing...";
                button.setAttribute('disabled', 'disabled');
                var formData = new FormData();
                formData.append("name", name);
                formData.append("email", email);
                formData.append("password", password);
                formData.append("contact_no", contact_no);
                formData.append("id", '{{ $user->id }}');
                $.ajaxSetup({
                    headers: {
                        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                    },
                });
                $.ajax({
                    url: "{{ url('/update-profile/') }}",
                    method: "POST",
                    contentType: false,
                    processData: false,
                    data: formData,
                    success: function(response) {
                        button.removeAttribute('disabled');
                        button.innerHTML = "Update Profile";
                        if (response.message == 200) {
                            Swal.fire({
                                toast: true,
                                icon: "success",
                                title: "Profile updated successfully!",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                            });
                            window.location.href = "{{ url('/') }}";
                        } else {
                            Swal.fire({
                                toast: true,
                                icon: "error",
                                title: "Profile update failed.",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        button.removeAttribute('disabled');
                        button.innerHTML = "Update Profile";
                        Swal.fire({
                            toast: true,
                            icon: "error",
                            title: "An error occurred: " + xhr.responseText,
                            animation: false,
                            position: "top-right",
                            showConfirmButton: false,
                            timer: 3000,
                            timerProgressBar: true,
                        });
                    }
                });
            });
        });
    </script>
@endsection
