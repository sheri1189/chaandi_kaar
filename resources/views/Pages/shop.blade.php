@extends('layouts.app')
@section('title', 'Chaandi Kaar Ecommerce')
@section('main')
    <main>
        <section class="breadcrumb__area include-bg pt-100 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12">
                        <div class="breadcrumb__content p-relative z-index-1">
                            <h3 class="breadcrumb__title">{{ Str::ucfirst('Shop List') }}</h3>
                            <div class="breadcrumb__list">
                                <span><a href="{{ url('/') }}">Home</a></span>
                                <span>{{ Str::ucfirst('Shop List') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="tp-shop-area pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-4">
                        <div class="tp-shop-sidebar mr-10">
                            <div class="tp-shop-widget mb-50">
                                <h3 class="tp-shop-widget-title">Categories</h3>
                                <div class="tp-shop-widget-content">
                                    <div class="tp-shop-widget-categories">
                                        <ul>
                                            @foreach ($categories as $getcategory)
                                                @if ($categories_products[$getcategory->id] == 0 || $categories_products[$getcategory->id] > 0)
                                                    <li><a href="{{ url('/get_category/' . $getcategory->id) }}">{{ Str::ucfirst($getcategory->name) }}
                                                            <span>{{ $categories_products[$getcategory->id] }}</span></a>
                                                    </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-8">
                        <div class="tp-shop-main-wrapper">
                            <div class="tp-shop-top mb-45">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <div class="tp-shop-top-left d-flex align-items-center ">
                                            <div class="tp-shop-top-tab tp-tab">
                                                <ul class="nav nav-tabs" id="productTab" role="tablist">
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link active" id="grid-tab" data-bs-toggle="tab"
                                                            data-bs-target="#grid-tab-pane" type="button" role="tab"
                                                            aria-controls="grid-tab-pane" aria-selected="true">
                                                            <svg width="18" height="18" viewBox="0 0 18 18"
                                                                fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path
                                                                    d="M16.3327 6.01341V2.98675C16.3327 2.04675 15.906 1.66675 14.846 1.66675H12.1527C11.0927 1.66675 10.666 2.04675 10.666 2.98675V6.00675C10.666 6.95341 11.0927 7.32675 12.1527 7.32675H14.846C15.906 7.33341 16.3327 6.95341 16.3327 6.01341Z"
                                                                    stroke="currentColor" stroke-width="1.5"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                                <path
                                                                    d="M16.3327 15.18V12.4867C16.3327 11.4267 15.906 11 14.846 11H12.1527C11.0927 11 10.666 11.4267 10.666 12.4867V15.18C10.666 16.24 11.0927 16.6667 12.1527 16.6667H14.846C15.906 16.6667 16.3327 16.24 16.3327 15.18Z"
                                                                    stroke="currentColor" stroke-width="1.5"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                                <path
                                                                    d="M7.33268 6.01341V2.98675C7.33268 2.04675 6.90602 1.66675 5.84602 1.66675H3.15268C2.09268 1.66675 1.66602 2.04675 1.66602 2.98675V6.00675C1.66602 6.95341 2.09268 7.32675 3.15268 7.32675H5.84602C6.90602 7.33341 7.33268 6.95341 7.33268 6.01341Z"
                                                                    stroke="currentColor" stroke-width="1.5"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                                <path
                                                                    d="M7.33268 15.18V12.4867C7.33268 11.4267 6.90602 11 5.84602 11H3.15268C2.09268 11 1.66602 11.4267 1.66602 12.4867V15.18C1.66602 16.24 2.09268 16.6667 3.15268 16.6667H5.84602C6.90602 16.6667 7.33268 16.24 7.33268 15.18Z"
                                                                    stroke="currentColor" stroke-width="1.5"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                            </svg>
                                                        </button>
                                                    </li>
                                                    <li class="nav-item" role="presentation">
                                                        <button class="nav-link" id="list-tab" data-bs-toggle="tab"
                                                            data-bs-target="#list-tab-pane" type="button" role="tab"
                                                            aria-controls="list-tab-pane" aria-selected="false">
                                                            <svg width="16" height="15" viewBox="0 0 16 15"
                                                                fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M15 7.11108H1" stroke="currentColor"
                                                                    stroke-width="2" stroke-linecap="round"
                                                                    stroke-linejoin="round" />
                                                                <path d="M15 1H1" stroke="currentColor" stroke-width="2"
                                                                    stroke-linecap="round" stroke-linejoin="round" />
                                                                <path d="M15 13.2222H1" stroke="currentColor"
                                                                    stroke-width="2" stroke-linecap="round"
                                                                    stroke-linejoin="round" />
                                                            </svg>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tp-shop-top-result">
                                                <p>Showing 1–14 of 26 results</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tp-shop-items-wrapper tp-shop-item-primary">
                                <div class="tab-content" id="productTabContent">
                                    <div class="tab-pane fade show active" id="grid-tab-pane" role="tabpanel"
                                        aria-labelledby="grid-tab" tabindex="0">
                                        <div class="row infinite-container">
                                            @foreach ($products as $product)
                                                @if ($product_stock[$product->id] == 0 || $product_stock[$product->id] > 0)
                                                    <div class="col-xl-4 col-sm-6 infinite-item">
                                                        <div class="tp-product-item-3 tp-product-style-primary mb-50">
                                                            <div class="tp-product-thumb-3 mb-15 fix p-relative z-index-1">
                                                                <a href="{{ url('/product/details/' . $product->id) }}">
                                                                    <img src="{{ json_decode($product->product_image)[0] }}" style="width:261px;height:261px"
                                                                        alt="">
                                                                </a>
                                                                <div
                                                                    class="tp-product-action-3 tp-product-action-4 has-shadow tp-product-action-primaryStyle">
                                                                    <div
                                                                        class="tp-product-action-item-3 d-flex flex-column">
                                                                        <button type="button"
                                                                            data-id="{{ $product->id }}" id="add_to_cart"
                                                                            {{ $product_stock[$product->id] == 0 ? 'disabled' : '' }}
                                                                            class="tp-product-action-btn-3 tp-product-add-cart-btn">
                                                                            <svg width="17" height="17"
                                                                                viewBox="0 0 17 17" fill="none"
                                                                                xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M3.34706 4.53799L3.85961 10.6239C3.89701 11.0923 4.28036 11.4436 4.74871 11.4436H4.75212H14.0265H14.0282C14.4711 11.4436 14.8493 11.1144 14.9122 10.6774L15.7197 5.11162C15.7384 4.97924 15.7053 4.84687 15.6245 4.73995C15.5446 4.63218 15.4273 4.5626 15.2947 4.54393C15.1171 4.55072 7.74498 4.54054 3.34706 4.53799ZM4.74722 12.7162C3.62777 12.7162 2.68001 11.8438 2.58906 10.728L1.81046 1.4837L0.529505 1.26308C0.181854 1.20198 -0.0501969 0.873587 0.00930333 0.526523C0.0705036 0.17946 0.406255 -0.0462578 0.746256 0.00805037L2.51426 0.313534C2.79901 0.363599 3.01576 0.5995 3.04042 0.888012L3.24017 3.26484C15.3748 3.26993 15.4139 3.27587 15.4726 3.28266C15.946 3.3514 16.3625 3.59833 16.6464 3.97849C16.9303 4.35779 17.0493 4.82535 16.9813 5.29376L16.1747 10.8586C16.0225 11.9177 15.1011 12.7162 14.0301 12.7162H14.0259H4.75402H4.74722Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M12.6629 7.67446H10.3067C9.95394 7.67446 9.66919 7.38934 9.66919 7.03804C9.66919 6.68673 9.95394 6.40161 10.3067 6.40161H12.6629C13.0148 6.40161 13.3004 6.68673 13.3004 7.03804C13.3004 7.38934 13.0148 7.67446 12.6629 7.67446Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M4.38171 15.0212C4.63756 15.0212 4.84411 15.2278 4.84411 15.4836C4.84411 15.7395 4.63756 15.9469 4.38171 15.9469C4.12501 15.9469 3.91846 15.7395 3.91846 15.4836C3.91846 15.2278 4.12501 15.0212 4.38171 15.0212Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M4.38082 15.3091C4.28477 15.3091 4.20657 15.3873 4.20657 15.4833C4.20657 15.6763 4.55592 15.6763 4.55592 15.4833C4.55592 15.3873 4.47687 15.3091 4.38082 15.3091ZM4.38067 16.5815C3.77376 16.5815 3.28076 16.0884 3.28076 15.4826C3.28076 14.8767 3.77376 14.3845 4.38067 14.3845C4.98757 14.3845 5.48142 14.8767 5.48142 15.4826C5.48142 16.0884 4.98757 16.5815 4.38067 16.5815Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M13.9701 15.0212C14.2259 15.0212 14.4333 15.2278 14.4333 15.4836C14.4333 15.7395 14.2259 15.9469 13.9701 15.9469C13.7134 15.9469 13.5068 15.7395 13.5068 15.4836C13.5068 15.2278 13.7134 15.0212 13.9701 15.0212Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M13.9692 15.3092C13.874 15.3092 13.7958 15.3874 13.7958 15.4835C13.7966 15.6781 14.1451 15.6764 14.1443 15.4835C14.1443 15.3874 14.0652 15.3092 13.9692 15.3092ZM13.969 16.5815C13.3621 16.5815 12.8691 16.0884 12.8691 15.4826C12.8691 14.8767 13.3621 14.3845 13.969 14.3845C14.5768 14.3845 15.0706 14.8767 15.0706 15.4826C15.0706 16.0884 14.5768 16.5815 13.969 16.5815Z"
                                                                                    fill="currentColor" />
                                                                            </svg>
                                                                            <span
                                                                                class="tp-product-tooltip">{{ $product_stock[$product->id] == 0 ? 'Out of Stock' : 'Add to Cart' }}</span>
                                                                        </button>
                                                                        <a href="{{ url('/product/details/' . $product->id) }}"
                                                                            class="tp-product-action-btn-3 tp-product-quick-view-btn text-center">
                                                                            <svg width="18" height="15"
                                                                                viewBox="0 0 18 15" fill="none"
                                                                                xmlns="http://www.w3.org/2000/svg">
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M8.99948 5.06828C7.80247 5.06828 6.82956 6.04044 6.82956 7.23542C6.82956 8.42951 7.80247 9.40077 8.99948 9.40077C10.1965 9.40077 11.1703 8.42951 11.1703 7.23542C11.1703 6.04044 10.1965 5.06828 8.99948 5.06828ZM8.99942 10.7482C7.0581 10.7482 5.47949 9.17221 5.47949 7.23508C5.47949 5.29705 7.0581 3.72021 8.99942 3.72021C10.9407 3.72021 12.5202 5.29705 12.5202 7.23508C12.5202 9.17221 10.9407 10.7482 8.99942 10.7482Z"
                                                                                    fill="currentColor" />
                                                                                <path fill-rule="evenodd"
                                                                                    clip-rule="evenodd"
                                                                                    d="M1.41273 7.2346C3.08674 10.9265 5.90646 13.1215 8.99978 13.1224C12.0931 13.1215 14.9128 10.9265 16.5868 7.2346C14.9128 3.54363 12.0931 1.34863 8.99978 1.34773C5.90736 1.34863 3.08674 3.54363 1.41273 7.2346ZM9.00164 14.4703H8.99804H8.99714C5.27471 14.4676 1.93209 11.8629 0.0546754 7.50073C-0.0182251 7.33091 -0.0182251 7.13864 0.0546754 6.96883C1.93209 2.60759 5.27561 0.00288103 8.99714 0.000185582C8.99894 -0.000712902 8.99894 -0.000712902 8.99984 0.000185582C9.00164 -0.000712902 9.00164 -0.000712902 9.00254 0.000185582C12.725 0.00288103 16.0676 2.60759 17.945 6.96883C18.0188 7.13864 18.0188 7.33091 17.945 7.50073C16.0685 11.8629 12.725 14.4676 9.00254 14.4703H9.00164Z"
                                                                                    fill="currentColor" />
                                                                            </svg>
                                                                            <span class="tp-product-tooltip">Quick
                                                                                View</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="tp-product-add-cart-btn-large-wrapper">
                                                                    <button type="button"
                                                                        class="tp-product-add-cart-btn-large"
                                                                        {{ $product_stock[$product->id] == 0 ? 'disabled' : '' }}
                                                                        data-id="{{ $product->id }}" id="add_to_cart">
                                                                        {{ $product_stock[$product->id] == 0 ? 'Out of Stock' : 'Add to Cart' }}
                                                                    </button>
                                                                </div>
                                                            </div>
                                                            <div class="tp-product-content-3">
                                                                <h3 class="tp-product-title-3">
                                                                    <a
                                                                        href="{{ url('/product/details/' . $product->id) }}">{{ Str::ucfirst($product->product_name) }}</a>
                                                                </h3>
                                                                <div class="tp-product-price-wrapper-3">
                                                                    <span
                                                                        class="tp-product-price-3 new-price">{{ 'Rs.' . $product->product_price }}</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="list-tab-pane" role="tabpanel"
                                        aria-labelledby="list-tab" tabindex="0">
                                        <div class="tp-shop-list-wrapper tp-shop-item-primary mb-70">
                                            <div class="row">
                                                @foreach ($products as $product)
                                                    @if ($product_stock[$product->id] == 0 || $product_stock[$product->id] > 0)
                                                        <div class="col-xl-12">
                                                            <div class="tp-product-list-item d-md-flex mb-4">
                                                                <div class="tp-product-list-thumb p-relative fix">
                                                                    <a href="{{ url('#') }}">
                                                                        <img src="{{ json_decode($product->product_image)[0] }}" style="width:261px;height:261px"
                                                                            alt="">
                                                                    </a>
                                                                    <div
                                                                        class="tp-product-action-2 tp-product-action-blackStyle">
                                                                        <div
                                                                            class="tp-product-action-item-2 d-flex flex-column">
                                                                            <a href="{{ url('/product/details/' . $product->id) }}"
                                                                                class="tp-product-action-btn-2 tp-product-quick-view-btn"
                                                                                style="border-radius: 0;padding: 0px 10px 0px 10px;">
                                                                                <svg width="18" height="15"
                                                                                    viewBox="0 0 18 15" fill="none"
                                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                                    <path fill-rule="evenodd"
                                                                                        clip-rule="evenodd"
                                                                                        d="M8.99948 5.06828C7.80247 5.06828 6.82956 6.04044 6.82956 7.23542C6.82956 8.42951 7.80247 9.40077 8.99948 9.40077C10.1965 9.40077 11.1703 8.42951 11.1703 7.23542C11.1703 6.04044 10.1965 5.06828 8.99948 5.06828ZM8.99942 10.7482C7.0581 10.7482 5.47949 9.17221 5.47949 7.23508C5.47949 5.29705 7.0581 3.72021 8.99942 3.72021C10.9407 3.72021 12.5202 5.29705 12.5202 7.23508C12.5202 9.17221 10.9407 10.7482 8.99942 10.7482Z"
                                                                                        fill="currentColor" />
                                                                                    <path fill-rule="evenodd"
                                                                                        clip-rule="evenodd"
                                                                                        d="M1.41273 7.2346C3.08674 10.9265 5.90646 13.1215 8.99978 13.1224C12.0931 13.1215 14.9128 10.9265 16.5868 7.2346C14.9128 3.54363 12.0931 1.34863 8.99978 1.34773C5.90736 1.34863 3.08674 3.54363 1.41273 7.2346ZM9.00164 14.4703H8.99804H8.99714C5.27471 14.4676 1.93209 11.8629 0.0546754 7.50073C-0.0182251 7.33091 -0.0182251 7.13864 0.0546754 6.96883C1.93209 2.60759 5.27561 0.00288103 8.99714 0.000185582C8.99894 -0.000712902 8.99894 -0.000712902 8.99984 0.000185582C9.00164 -0.000712902 9.00164 -0.000712902 9.00254 0.000185582C12.725 0.00288103 16.0676 2.60759 17.945 6.96883C18.0188 7.13864 18.0188 7.33091 17.945 7.50073C16.0685 11.8629 12.725 14.4676 9.00254 14.4703H9.00164Z"
                                                                                        fill="currentColor" />
                                                                                </svg>
                                                                                <span
                                                                                    class="tp-product-tooltip tp-product-tooltip-right">Quick
                                                                                    View</span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="tp-product-list-content">
                                                                    <div class="tp-product-content-2 pt-15">
                                                                        <h3 class="tp-product-title-2">
                                                                            <a
                                                                                href="{{ url('/product/details/' . $product->id) }}">{{ Str::ucfirst($product->product_name) }}</a>
                                                                        </h3>
                                                                        <div
                                                                            class="tp-product-rating-icon tp-product-rating-icon-2">
                                                                            <span><i class="fa-solid fa-star"></i></span>
                                                                            <span><i class="fa-solid fa-star"></i></span>
                                                                            <span><i class="fa-solid fa-star"></i></span>
                                                                            <span><i class="fa-solid fa-star"></i></span>
                                                                            <span><i class="fa-solid fa-star"></i></span>
                                                                        </div>
                                                                        <div class="tp-product-price-wrapper-2">
                                                                            <span
                                                                                class="tp-product-price-2 new-price">{{ 'Rs.' . $product->product_price }}</span>
                                                                        </div>
                                                                        <p>{{ $product->product_description }}</p>
                                                                        <div class="tp-product-list-add-to-cart">
                                                                            <button class="tp-product-list-add-to-cart-btn"
                                                                                data-id="{{ $product->id }}"
                                                                                id="add_to_cart"
                                                                                {{ $product_stock[$product->id] == 0 ? 'disabled' : '' }}>
                                                                                {{ $product_stock[$product->id] == 0 ? 'Out Of Stock' : 'Add to Cart' }}</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="infinite-pagination d-none">
                                <a href="{{ $products->nextPageUrl() }}" class="infinite-next-link">Next</a>
                            </div>
                            <div class="tp-shop-pagination mt-20">
                                <div class="tp-pagination">
                                    <nav>
                                        <ul>
                                            @if ($products->onFirstPage())
                                                <li>
                                                    <span class="tp-pagination-prev prev page-numbers disabled">
                                                        <svg width="15" height="13" viewBox="0 0 15 13"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M1.00017 6.77879L14 6.77879" stroke="currentColor"
                                                                stroke-width="1.5" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                            <path d="M6.24316 11.9999L0.999899 6.77922L6.24316 1.55762"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </span>
                                                </li>
                                            @else
                                                <li>
                                                    <a href="{{ $products->previousPageUrl() }}"
                                                        class="tp-pagination-prev prev page-numbers">
                                                        <svg width="15" height="13" viewBox="0 0 15 13"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M1.00017 6.77879L14 6.77879" stroke="currentColor"
                                                                stroke-width="1.5" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                            <path d="M6.24316 11.9999L0.999899 6.77922L6.24316 1.55762"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </a>
                                                </li>
                                            @endif
                                            @for ($i = 1; $i <= $products->lastPage(); $i++)
                                                <li>
                                                    @if ($i == $products->currentPage())
                                                        <span class="current">{{ $i }}</span>
                                                    @else
                                                        <a href="{{ $products->url($i) }}">{{ $i }}</a>
                                                    @endif
                                                </li>
                                            @endfor

                                            @if ($products->hasMorePages())
                                                <li>
                                                    <a href="{{ $products->nextPageUrl() }}" class="next page-numbers">
                                                        <svg width="15" height="13" viewBox="0 0 15 13"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M13.9998 6.77883L1 6.77883" stroke="currentColor"
                                                                stroke-width="1.5" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                            <path d="M8.75684 1.55767L14.0001 6.7784L8.75684 12"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </a>
                                                </li>
                                            @else
                                                <li>
                                                    <span class="next page-numbers disabled">
                                                        <svg width="15" height="13" viewBox="0 0 15 13"
                                                            fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M13.9998 6.77883L1 6.77883" stroke="currentColor"
                                                                stroke-width="1.5" stroke-linecap="round"
                                                                stroke-linejoin="round" />
                                                            <path d="M8.75684 1.55767L14.0001 6.7784L8.75684 12"
                                                                stroke="currentColor" stroke-width="1.5"
                                                                stroke-linecap="round" stroke-linejoin="round" />
                                                        </svg>
                                                    </span>
                                                </li>
                                            @endif
                                        </ul>
                                    </nav>
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
            $(document).on("click", "#add_to_cart", function(e) {
                e.preventDefault();
                var product_id = $(this).data('id');
                var quantity = 1;
                var formData = new FormData();
                formData.append("product_id", product_id);
                formData.append("quantity", quantity);
                $.ajaxSetup({
                    headers: {
                        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                    },
                });
                $.ajax({
                    url: "{{ url('/add_to_cart') }}",
                    type: "POST",
                    contentType: false,
                    processData: false,
                    data: formData,
                    success: function(response) {
                        if (response.message == 400) {
                            Swal.fire({
                                toast: true,
                                icon: "error",
                                title: "Login is the first priority",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                            });
                        } else if (response.message == 200) {
                            $(".cart_items_count").empty();
                            $(".cart_items_count").append(response.cart_items);
                            Swal.fire({
                                toast: true,
                                icon: "success",
                                title: "Product added to the cart",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                            });
                        } else if (response.message == 300) {
                            Swal.fire({
                                toast: true,
                                icon: "error",
                                title: "Product already exists into the cart if you want to buy more than increase the quantity form the cart.",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 6000,
                                timerProgressBar: true,
                            });
                        } else {
                            Swal.fire({
                                toast: true,
                                icon: "error",
                                title: "Someting went wrong",
                                animation: false,
                                position: "top-right",
                                showConfirmButton: false,
                                timer: 3000,
                                timerProgressBar: true,
                            });
                        }
                    },
                });
            });
        });
    </script>
@endsection
