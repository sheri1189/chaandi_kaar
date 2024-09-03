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
                    var formData = new FormData(form_update);
                    var id = $("#update")
                        .closest("#form_update")
                        .find("#id")
                        .val();
                    var get_url = $("#update")
                        .closest("#form_update")
                        .find("#get_url")
                        .val();
                    var module_name = $("#update")
                        .closest("#form_update")
                        .find("#module_name")
                        .val();
                    // --------------------------loading button coading-------------------
                    const button = document.getElementById("update");
                    button.innerHTML =
                        "<span class='spinner-border spinner-border-sm' role='status' aria-hidden='true'></span> Processing...";
                    button.setAttribute("disabled", "disabled");
                    // --------------------------loading button coading-------------------
                    const titleCase = (s) => s.replace(/\b\w/g, c => c.toUpperCase());
                    $.ajax({
                        url: get_url + "/" + id,
                        method: "POST",
                        contentType: false,
                        processData: false,
                        data: formData,
                        dataType: "json",
                        success: function (response) {
                            if (response.message == 200) {
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        module_name +
                                        " Updated Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                location.reload(true);
                            } else if (response.module == "category") {
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        module_name +
                                        " Updated Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                $("#myModal").modal("hide");
                                $(".text-danger").text("");
                                $("#category_name_" + response.module_data.id).empty();
                                $("#category_description_" + response.module_data.id).empty();
                                $("#category_name_" + response.module_data.id).append(titleCase(response.module_data.name));
                                $("#category_description_" + response.module_data.id).append(response.module_data.description);
                            }else if (response.module == "quantityunitupdate") {
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        module_name +
                                        " Updated Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                $("#myModal").modal("hide");
                                $(".text-danger").text("");
                                $("#quantity_unit_" + response.module_data.id).empty();
                                $("#quantity_unit_" + response.module_data.id).append(titleCase(response.module_data.quantity_unit));
                            } else if (response.module == "product") {
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:
                                        module_name +
                                        " Updated Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                location.reload(true);
                                // $("#myModal").modal("hide");
                                // $(".text-danger").text("");
                                // $("#category_" + response.module_data.id).empty();
                                // $("#product_name_" + response.module_data.id).empty();
                                // $("#product_unit_" + response.module_data.id).empty();
                                // $("#product_description_" + response.module_data.id).empty();
                                // $("#product_price_" + response.module_data.id).empty();
                                // $("#category_" + response.module_data.id).append(titleCase(response.category));
                                // $("#product_name_" + response.module_data.id).append(titleCase(response.product_name));
                                // $("#product_unit_" + response.module_data.id).append(titleCase(response.product_unit));
                                // $("#product_price_" + response.module_data.id).append("Rs."+response.product_price);
                                // $("#product_description_" + response.module_data.id).append(response.product_description);
                                // $("#product_image_" + response.module_data.id).find('.avatar-md').attr('src',response.module_data.product_image);
                            }else if (response.message == "labout_cost") {
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
                            } else if (response.message == "update_min_stock") {
                                Swal.fire({
                                    toast: true,
                                    icon: "success",
                                    title:"Min Stock Updated Successfully..!",
                                    animation: false,
                                    position: "top-right",
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                });
                                $("form").trigger("reset");
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                $("#editMinStockModal").modal("hide");
                                $(".text-danger").text("");
                                $("#product_min_stock_" + response.data.id).empty();
                                $("#product_min_stock_" + response.data.id).append(response.data.product_min_limit);
                                location.reload(true);
                            } else {
                                button.removeAttribute("disabled");
                                button.innerHTML = "Update " + module_name + " >";
                                Swal.fire({
                                    toast: true,
                                    icon: "error",
                                    title:
                                        module_name +
                                        " not Updated Successfully..!",
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
                            button.innerHTML = "Update " + module_name + " >";
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
