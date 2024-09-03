(function () {
    "use strict";
    var forms = document.querySelectorAll(".needs-validation");
    Array.prototype.slice.call(forms).forEach(function (form) {
        form.addEventListener(
            "submit",
            function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                } else {
                    event.preventDefault();
                    $.ajaxSetup({
                        headers: {
                            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                                "content"
                            ),
                        },
                    });
                    var formData = new FormData(form_submit);
                    var get_url = $("#insert")
                        .closest("#form_submit")
                        .find("#get_url")
                        .val();
                    var module_name = $("#insert")
                        .closest("#form_submit")
                        .find("#module_name")
                        .val();
                    // --------------------------loading button coading-------------------
                    const button = document.getElementById("insert");
                    button.innerHTML =
                        "<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Processing...";
                    button.setAttribute("disabled", "disabled");
                    // --------------------------loading button coading-------------------
                    const titleCase = (s) => s.replace(/\b\w/g, c => c.toUpperCase());
                    $.ajax({
                        url: get_url,
                        method: "POST",
                        contentType: false,
                        processData: false,
                        data: formData,
                        dataType: "json",
                        success: function (response) {
                            if (response.message == 200) {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "New " +
                                        module_name +
                                        " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                            } else if (response.message == "purchase") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "Purchase Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Purhcase Prouct >";
                                location.reload(true);
                            } else if (response.message == "sale") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "Sale Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Purhcase Prouct >";
                                location.reload(true);
                            } else if (response.message == "low_stock") {
                                $(".text-danger").text("");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title: "Given Quantity is Greater than Stock..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            } else if (response.message == "debit_add") {
                                $(".text-danger").text("");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title: "Debit Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                location.reload(true);
                            } else if (response.message == "category") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title: "New " + module_name + " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                $("#addCategoryModal").modal("hide");
                                $("#categoryData").empty();
                                var baseURL = get_url;
                                var count = 0;
                                $.each(response.data, function (key, value) {
                                    count++;
                                    $("#categoryData").append(
                                        `<tr>
                                            <td data-ordering="false">${count}</td>
                                            <td id="category_name_${value.id}">${titleCase(value.name)}</td>
                                            <td id="category_description_${value.id}">${value.description}</td>
                                            <td>
                                                <form>
                                                    <input type="hidden" id="get_url" value="${baseURL}">
                                                    <input type="hidden" id="module_name" value="Category">
                                                </form>
                                                <div class="dropdown d-inline-block">
                                                    <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="ri-more-fill align-middle"></i>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item edit-item-btn update" data-update="${value.id}" style="cursor: pointer;">
                                                            <i class="ri-pencil-fill align-bottom me-2 text-muted"></i>Edit</a></li>
                                                        <li><a class="dropdown-item remove-item-btn delete" data-del="${value.id}" style="cursor: pointer;">
                                                            <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i>Delete</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>`
                                    );
                                });
                            } else if (response.message == "quantityunit") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title: "New " + module_name + " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                $("#addquantityunitModal").modal("hide");
                                $("#quantityUnitData").empty();
                                var baseURL = get_url;
                                var count = 0;
                                $.each(response.data, function (key, value) {
                                    count++;
                                    $("#quantityUnitData").append(
                                        `<tr>
                                            <td data-ordering="false">${count}</td>
                                            <td id="quantity_unit_${value.id}">${titleCase(value.quantity_unit)}</td>
                                            <td>
                                                <form>
                                                    <input type="hidden" id="get_url" value="${baseURL}">
                                                    <input type="hidden" id="module_name" value="Unit">
                                                </form>
                                                <div class="dropdown d-inline-block">
                                                    <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="ri-more-fill align-middle"></i>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item edit-item-btn update" data-update="${value.id}" style="cursor: pointer;">
                                                            <i class="ri-pencil-fill align-bottom me-2 text-muted"></i>Edit</a></li>
                                                        <li><a class="dropdown-item remove-item-btn delete" data-del="${value.id}" style="cursor: pointer;">
                                                            <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i>Delete</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>`
                                    );
                                });
                            } else if (response.message == "product") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title: "New " + module_name + " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                location.reload(true);
                                // $("#addProductModal").modal("hide");
                                // $("#productData").empty();
                                // var baseURL = get_url;
                                // var count = 0;
                                // $.each(response.allproducts, function (key, value) {
                                //     count++;
                                //     if (response.array_data[value.id]) {
                                //         $("#productData").append(
                                //             `<tr>
                                //                 <td data-ordering="false">${count}</td>
                                //                 <td id="product_name_${value.id}">${titleCase(value.product_name)}</td>
                                //                 <td id="company_${value.id}">${titleCase(response.array_data[value.id])}</td>
                                //                 <td id="product_unit_${value.id}">${titleCase(value.product_unit)}</td>
                                //                 <td id="product_price_${value.id}">Rs.${titleCase(value.product_price)}</td>
                                //                 <td id="product_image_${value.id}"><img
                                //                     src="${value.product_image}" alt="Img not found"
                                //                     class="avatar-md"></td>
                                //                      <td id="product_description_${value.id}"><img
                                //                     src="${value.product_description}" alt="Img not found"
                                //                     class="avatar-md"></td>
                                //                 <td>
                                //                     <form>
                                //                         <input type="hidden" id="get_url" value="${baseURL}">
                                //                         <input type="hidden" id="module_name" value="Product">
                                //                     </form>
                                //                     <div class="dropdown d-inline-block">
                                //                         <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                //                             <i class="ri-more-fill align-middle"></i>
                                //                         </button>
                                //                         <ul class="dropdown-menu dropdown-menu-end">
                                //                             <li><a class="dropdown-item edit-item-btn update" data-update="${value.id}" style="cursor: pointer;">
                                //                                 <i class="ri-pencil-fill align-bottom me-2 text-muted"></i>Edit</a></li>
                                //                             <li><a class="dropdown-item remove-item-btn delete" data-del="${value.id}" style="cursor: pointer;">
                                //                                 <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i>Delete</a></li>
                                //                         </ul>
                                //                     </div>
                                //                 </td>
                                //             </tr>`
                                //         );
                                //     }
                                // });
                            } else if (response.message == "labout_cost") {
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title:
                                        "Please Enter the Labour Cost First onto the Profile Section",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            } else if (response.error == "already exists") {
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title:
                                        "Company Already Exists..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            } else if (response.error == "already exists quantity") {
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title:
                                        "Quantity Unit Already Exists..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            } else if (response.message == "update_password") {
                                $(".text-danger").text("");
                                button.removeAttribute("disabled");
                                button.innerHTML = '<i class="fas fa-lock"></i> Change Password';
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "Password Changed Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            } else if (response.message == "query") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "New " +
                                        module_name +
                                        " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                window.location.href = "/inquiry"
                            } else if (response.message == "teacher") {
                                $(".text-danger").text("");
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        "New " +
                                        module_name +
                                        " Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                window.location.href = "/teacher"
                            } else {
                                button.removeAttribute("disabled");
                                button.innerHTML = "Add " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title:
                                        module_name +
                                        " Not Added Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                            }
                            $("form").trigger("reset");
                            form.classList.remove("was-validated");
                        },
                        error: function (error) {
                            button.removeAttribute("disabled");
                            button.innerHTML = "Add " + module_name + " >";
                            var error = error.responseJSON;
                            $.each(error.errors, function (index, value) {
                                $("#" + index).html(value);
                            });
                        },
                    });
                }
                form.classList.add("was-validated");
            },
            false
        );
    });
})();
