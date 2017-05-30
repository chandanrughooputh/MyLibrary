
$(document).ready(function () {
        var url = window.location.protocol + "//" + window.location.host + "/" + 'MyLibraryWeb/BookStatus/GetAllBooks';
            $.ajax({
                type: 'GET',
                url: url,
                datatype: JSON,
                data: { },
                success: function (data) {
                    $('#bookList tbody').empty();

                    $.each(data, function (i, item) {
                        var rows = "<tr>"
                                        + "<td>" + item.BookTitle + "</td>"
                                        + "<td>" + item.PersonName + "</td>"
                                        + "<td>" + item.HireDateStr + "</td>"
                                    + "</tr>";
                        $('#bookList tbody').append(rows);
                    });
                },
                error: function(data) {
                    alert('Oops.. Looks like we have an error: '+data);
                }
            });
    });
